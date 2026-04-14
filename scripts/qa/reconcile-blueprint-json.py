"""
Reconcile alignment/aicpa-blueprint-tasks.json against the source-of-truth
AICPA 2026 CPA Exam Blueprints PDF.

This is a DIAGNOSTIC script, not a re-extraction script. It answers the
question: "is the JSON structurally complete and correct compared to the PDF?"
It does NOT rewrite the JSON. Gaps surfaced here should be patched manually
against the PDF pages, same workflow used during the topic-specs pilot that
uncovered TCP/II/A, TCP/II/B, REG/V/B, and REG/V/C issues.

Strategy:
  1. Load the PDF, identify each section's page range by its running footer
     ("Uniform CPA Examination Blueprints: ... Section (AUD|FAR|REG|BAR|ISC|TCP)")
  2. For each section, concatenate page text and run two structural scanners:
       - Group scanner: find single-uppercase-letter group markers "A.", "B.", ...
       - Topic scanner: find numbered topic markers "1.", "2.", ... (cap at <=20
         to reject years, IRC sections, etc.)
  3. Build a candidate skeleton:
       {section: {area_roman_or_unknown: {group_letter: [topic_numbers]}}}
     Note that the scanner does not always know which area a group belongs to
     (column layout noise), so the comparison is at the section/group level
     when area attribution is ambiguous.
  4. Load the current JSON skeleton.
  5. Diff: report groups present in PDF scan but missing in JSON, and groups
     present in JSON but missing in PDF scan. Report topic number set diffs
     per group.
  6. Also report any topic with task_count == 0 in the JSON (a smell).

Output: a markdown report to stdout summarizing gaps. Exit code 1 if any
hard gaps found, 0 if clean.

Known scanner limitations (documented during the 2026-04-14 Tier 1 cleanup):
  - The scanner misreads task-list sentences that happen to start with a
    number as sub-topic markers. For groups that are direct-topic-only in
    both the PDF and the JSON, this produces "In PDF, not JSON: [1,2,...]"
    false positives. Always verify by inspecting the JSON structure and
    the relevant PDF page before patching.
  - When two groups share the same letter across different areas in the
    same section (e.g., ISC/I/B "Data management" vs ISC/II/B "Security"),
    the union-style group-letter comparison conflates them. Check each
    area separately before concluding a group is missing.
  - The section page detector uses the in-page "Content group/topic"
    table header as a signal and may miss continuation pages that lack
    that header. Task attribution within a section is still correct
    because it reads through all detected pages.
"""

import json
import re
import sys
import io
from collections import defaultdict

sys.stdout = io.TextIOWrapper(sys.stdout.buffer, encoding="utf-8")

import pdfplumber

PDF_PATH = "alignment/AICPA/CPA Exam Blueprints 2026.pdf"
JSON_PATH = "alignment/aicpa-blueprint-tasks.json"

SECTIONS = ["AUD", "FAR", "REG", "BAR", "ISC", "TCP"]

# Regex for group markers in section body text.
# The PDF layout sometimes squishes "A. Name" to "A.Name" and sometimes inserts
# a stray space after the first letter of the name ("A. C orporations"). We
# accept single-capital-letter followed by period, optional space, then an
# uppercase letter that starts the group name.
GROUP_RE = re.compile(r"(?:^|(?<=\s))([A-Z])\.\s*([A-Z])")

# Regex for topic number markers (1-20). Same column-artifact tolerance.
TOPIC_RE = re.compile(r"(?:^|(?<=\s))(\d{1,2})\.\s*([A-Z])")

# Words that signal a line is a group header (noisy, used only as tiebreaker)
GROUP_NAME_HINTS = re.compile(r"^[A-Z][a-z]")


def load_json_skeleton(path):
    """Return {section: {area: {group_letter: {topic_number: task_count}}}}."""
    with open(path, encoding="utf-8") as f:
        data = json.load(f)
    skel = {}
    for section, areas in data.items():
        skel[section] = {}
        for area in areas:
            area_id = area["area"]
            skel[section][area_id] = {}
            for group in area.get("groups", []):
                letter = group["letter"]
                skel[section][area_id][letter] = {
                    "name": group.get("name", ""),
                    "topics": {
                        topic["number"]: {
                            "name": topic.get("name", ""),
                            "task_count": len(topic.get("tasks", [])),
                        }
                        for topic in group.get("topics", [])
                    },
                }
    return skel, data


def identify_section_pages(pdf):
    """Return {section: [page_indices]} based on PDF running footers.

    Each page of a section blueprint has a footer ending with
    "Section – <section name> (<CODE>) <CODE><pagenum>" (actual characters
    vary with PDF extraction). We detect section membership by scanning for
    the section code followed by a page number at the end of a page, or by
    the phrase "Content group/topic" + "Representative Task" anywhere on the
    page (table header that appears only on blueprint pages).
    """
    section_pages = {s: [] for s in SECTIONS}
    for i, page in enumerate(pdf.pages):
        text = page.extract_text() or ""
        has_table = "Content group/topic" in text and "Representative Task" in text
        if not has_table:
            continue
        # Find which section code is most prominent in the running footer
        # (last 400 chars of the page text).
        tail = text[-400:]
        best = None
        for code in SECTIONS:
            # Look for "(CODE)" or "CODE<digits>" near the footer.
            if re.search(rf"\({code}\)", tail) or re.search(rf"{code}\d+\s*$", tail.strip()):
                best = code
                break
        if best is None:
            # Fallback: look anywhere on the page for the section code marker.
            for code in SECTIONS:
                if re.search(rf"^{code}\d+", text, re.MULTILINE):
                    best = code
                    break
        if best is not None:
            section_pages[best].append(i)
    return section_pages


def scan_section_for_structure(pdf, page_indices):
    """Return {area_roman_or_unknown: {group_letter: set(topic_numbers)}}.

    Tries to attribute each group to the area header most recently seen
    above it in the page stream. Topics are attributed to the most recently
    seen group. Area attribution is ambiguous when area headers don't appear
    (continuation pages), so those groups get attributed to the previous
    area that was seen on an earlier page.
    """
    found = defaultdict(lambda: defaultdict(set))
    group_names = {}  # (area, letter) -> name preview
    current_area = None

    for idx in page_indices:
        text = pdf.pages[idx].extract_text() or ""

        # Look for an Area header on this page
        area_match = re.search(
            r"Area\s+([IVX]+)\s*[–—-]\s*([A-Z][^()\n]+?)\s*\(\d+[–—-]\d+%\)",
            text,
        )
        if area_match:
            current_area = area_match.group(1)

        if current_area is None:
            current_area = "?"

        # Process text line-by-line so group/topic markers align to columns
        for raw_line in text.split("\n"):
            line = raw_line.strip()
            if not line or len(line) < 3:
                continue

            # Skip header/footer lines
            if "Uniform CPA Examination" in line:
                continue
            if "Content group/topic" in line:
                continue
            if line.startswith(("Section Introduction", "Skill")):
                continue
            if re.match(r"^(AUD|FAR|REG|BAR|ISC|TCP)\d+$", line):
                continue
            if line in ("Remembering", "& Understanding", "& UnderstandingApplication"):
                continue

            # Group marker: "A. Xname" with X capital. But be strict — the
            # marker must be at the start of the line (post-strip) AND the
            # name text after the period must look like a group name (starts
            # with a capital letter, at least a few characters long).
            g = re.match(r"^([A-Z])\.\s*([A-Z][A-Za-z][A-Za-z \-,’'()/&]{2,})", line)
            if g:
                letter = g.group(1)
                name_preview = g.group(2).strip()[:80]
                # Filter obvious false positives: "A." followed by something
                # that is clearly a task sentence (contains verb patterns
                # like "Identify the..." AT the very start, which would be a
                # task list item, not a group header). If the line also
                # contains lowercase words and ends with period+uppercase
                # partway through, it's probably a task, not a group header.
                if re.match(r"^[A-Z]\.\s*(Recall|Identify|Calculate|Determine|Apply|Use|Analyze|Review|Compare|Interpret|Evaluate|Explain|Prepare)\b", line):
                    continue
                found[current_area][letter].add(0)  # Placeholder so group is registered
                key = (current_area, letter)
                if key not in group_names or len(name_preview) > len(group_names[key]):
                    group_names[key] = name_preview
                continue

            # Topic marker: "1. Name" with N <= 20
            t = re.match(r"^(\d{1,2})\.\s*([A-Z][A-Za-z][A-Za-z \-,’'()/&]{2,})", line)
            if t:
                num = int(t.group(1))
                if num == 0 or num > 20:
                    continue
                # Attribute to the most recently seen group in this area. If
                # none, stash under a sentinel "?" letter.
                letters_in_area = [
                    l for l in found[current_area].keys() if l != "?"
                ]
                letter = letters_in_area[-1] if letters_in_area else "?"
                found[current_area][letter].add(num)

    # Strip the placeholder 0s (they were only used to register the group)
    result = {}
    for area, groups in found.items():
        result[area] = {}
        for letter, topics in groups.items():
            topics.discard(0)
            result[area][letter] = topics
    return result, group_names


def reconcile(pdf_path, json_path):
    skel, _raw = load_json_skeleton(json_path)

    pdf = pdfplumber.open(pdf_path)
    section_pages = identify_section_pages(pdf)

    report_lines = []
    gaps_found = 0

    report_lines.append("# AICPA Blueprint JSON ↔ PDF Reconciliation Report")
    report_lines.append("")
    report_lines.append(f"PDF: `{pdf_path}`")
    report_lines.append(f"JSON: `{json_path}`")
    report_lines.append("")

    for section in SECTIONS:
        pages = section_pages.get(section, [])
        report_lines.append(f"## {section}")
        report_lines.append("")
        if not pages:
            report_lines.append(f"**No blueprint pages detected for {section}.**")
            report_lines.append("")
            gaps_found += 1
            continue

        report_lines.append(
            f"Pages detected: {len(pages)} "
            f"(range {pages[0]+1}–{pages[-1]+1})"
        )
        report_lines.append("")

        pdf_skel, group_names = scan_section_for_structure(pdf, pages)
        json_sec = skel.get(section, {})

        # Compare group-letter sets. We do this union-style across areas
        # because column-layout noise can mis-attribute a group to the wrong
        # area; we want to find genuine gaps, not area-attribution drift.
        pdf_groups = set()
        for area, groups in pdf_skel.items():
            for letter in groups.keys():
                if letter != "?":
                    pdf_groups.add(letter)
        json_groups = set()
        for area, groups in json_sec.items():
            for letter in groups.keys():
                json_groups.add(letter)

        missing_in_json = pdf_groups - json_groups
        extra_in_json = json_groups - pdf_groups

        if missing_in_json:
            report_lines.append(
                f"### ❌ Groups present in PDF scan but missing in JSON"
            )
            for letter in sorted(missing_in_json):
                # Find which area the scanner thinks this letter belongs to
                # and its name preview.
                areas_for_letter = [
                    area for area, groups in pdf_skel.items() if letter in groups
                ]
                name_hints = []
                for area in areas_for_letter:
                    key = (area, letter)
                    if key in group_names:
                        name_hints.append(f"{area}: {group_names[key]}")
                hint_text = " | ".join(name_hints) if name_hints else "(no name captured)"
                report_lines.append(f"- **{letter}** — {hint_text}")
                gaps_found += 1
            report_lines.append("")

        if extra_in_json:
            # Not necessarily a bug — could be a scanner miss. Flag as warning.
            report_lines.append(
                f"### ⚠ Groups in JSON not detected in PDF scan (may be scanner false negatives)"
            )
            for letter in sorted(extra_in_json):
                # Find the area in JSON
                for area, groups in json_sec.items():
                    if letter in groups:
                        report_lines.append(
                            f"- **{area}/{letter}** — JSON name: {groups[letter]['name'][:80]}"
                        )
                        break
            report_lines.append("")

        # Topic-level comparison: for each group that exists in BOTH, compare
        # the topic number sets.
        topic_gaps = []
        for letter in sorted(pdf_groups & json_groups):
            # PDF: union of all topic numbers across all areas where this
            # letter appeared.
            pdf_topics = set()
            for area, groups in pdf_skel.items():
                if letter in groups:
                    pdf_topics |= groups[letter]
            # JSON: find the group and get its topic numbers.
            json_topics = set()
            json_task_counts = {}
            json_group_name = ""
            for area, groups in json_sec.items():
                if letter in groups:
                    json_group_name = groups[letter]["name"]
                    for num, info in groups[letter]["topics"].items():
                        json_topics.add(num)
                        json_task_counts[num] = info["task_count"]
                    break
            # Topic 0 in JSON = "(direct)" — only present when group has no
            # numbered sub-topics. Ignore mismatches involving 0 if the JSON
            # group has ONLY topic 0 and no numbered topics (scanner won't
            # find numbered topics that don't exist).
            if json_topics == {0} and not pdf_topics:
                continue
            missing_topic_nums = pdf_topics - json_topics
            extra_topic_nums = json_topics - {0} - pdf_topics
            if missing_topic_nums or extra_topic_nums:
                topic_gaps.append((letter, json_group_name, missing_topic_nums, extra_topic_nums, json_task_counts))

        if topic_gaps:
            report_lines.append("### ⚠ Topic-level discrepancies")
            for letter, gname, missing, extra, tc in topic_gaps:
                report_lines.append(f"- **{letter}. {gname[:60]}**")
                if missing:
                    report_lines.append(f"  - In PDF, not JSON: {sorted(missing)}")
                    gaps_found += 1
                if extra:
                    report_lines.append(
                        f"  - In JSON, not PDF: {sorted(extra)} (may be scanner miss)"
                    )
            report_lines.append("")

        # Task-count smell: any topic with 0 tasks is suspicious.
        zero_task_topics = []
        for area, groups in json_sec.items():
            for letter, gi in groups.items():
                for num, info in gi["topics"].items():
                    if info["task_count"] == 0:
                        zero_task_topics.append(
                            f"{area}/{letter}/{num} — {info['name'][:60]}"
                        )
        if zero_task_topics:
            report_lines.append("### ❌ Topics with 0 tasks in JSON (always a bug)")
            for t in zero_task_topics:
                report_lines.append(f"- {t}")
                gaps_found += 1
            report_lines.append("")

        if not missing_in_json and not topic_gaps and not zero_task_topics:
            report_lines.append("✅ No structural gaps detected.")
            report_lines.append("")

    pdf.close()

    report_lines.append("---")
    report_lines.append(f"**Total gaps flagged: {gaps_found}**")
    report_lines.append("")

    return "\n".join(report_lines), gaps_found


if __name__ == "__main__":
    report, gaps = reconcile(PDF_PATH, JSON_PATH)
    print(report)
    sys.exit(1 if gaps > 0 else 0)
