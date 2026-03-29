"""
Extract all representative tasks from the AICPA 2026 CPA Exam Blueprints PDF.
Outputs a JSON file with the full hierarchy: Section → Area → Group → Topic → Task (with skill level).

Strategy: Two-pass approach
  Pass 1: Extract raw text per page, normalize fragments into coherent blocks
  Pass 2: Parse normalized text for structure (Area → Group → Topic → Task)
"""

import json
import re
import sys
import io

sys.stdout = io.TextIOWrapper(sys.stdout.buffer, encoding='utf-8')

from PyPDF2 import PdfReader

PDF_PATH = "C:/Users/james/Desktop/Workshop/slayer-cpa/alignment/AICPA/CPA Exam Blueprints 2026.pdf"
OUT_PATH = "C:/Users/james/Desktop/Workshop/slayer-cpa/alignment/aicpa-blueprint-tasks.json"

reader = PdfReader(PDF_PATH)
total_pages = len(reader.pages)

# Extract all page text
all_text = []
for i in range(total_pages):
    text = reader.pages[i].extract_text() or ""
    all_text.append(text)

# Identify section blueprint pages
section_pages = {
    "AUD": [], "FAR": [], "REG": [], "BAR": [], "ISC": [], "TCP": []
}

for i, text in enumerate(all_text):
    for code in section_pages:
        if re.search(rf'^{code}\d+', text) or re.search(rf'{code}\d+\s*$', text.strip()):
            if "Representative Task" in text or "Content group/topic" in text:
                section_pages[code].append(i)

print("Pages found per section:")
for code, pages in section_pages.items():
    print(f"  {code}: {len(pages)} pages (indices {pages[0] if pages else '?'}-{pages[-1] if pages else '?'})")

# ── Task verb pattern ──────────────────────────────────────────────
TASK_VERBS = (
    r'(?:Understand|Apply|Identify|Recall|Prepare|Perform|Calculate|Determine|'
    r'Evaluate|Explain|Document|Analyze|Assess|Recognize|Describe|Distinguish|'
    r'Compare|Select|Develop|Design|Conclude|Interpret|Examine|Investigate|'
    r'Extract|Adjust|Detect|Construct|Demonstrate|Recommend|Forecast|Estimate|'
    r'Classify|Test|Recalculate|Verify|Confirm|Consider|Use|Draft|Defend|'
    r'Report|Resolve|Propose|Integrate|Modify|Revise|Plan|Summarize|Inquire|'
    r'Inspect|Observe|Reperform|Trace|Vouch|Scan|Reconcile|Derive|Review)'
)

# Matches a task verb at a word boundary (handles both normal and squished text)
# Lookbehinds: after whitespace, after lowercase→uppercase transition, after period, after closing paren
TASK_VERB_BOUNDARY = re.compile(r'(?:(?<=\s)|(?<=[a-z])(?=[A-Z])|(?<=\.)(?=[A-Z])|(?<=\))(?=[A-Z])|^)(' + TASK_VERBS + r')\b')


def normalize_page_text(raw_text):
    """Normalize a single page's raw PDF text into a single cleaned string.

    Removes headers/footers, control chars, and joins fragmented words.
    Returns a single string with the page's content.
    """
    # Remove control characters
    raw_text = re.sub(r'[\x07\x00-\x06\x0e-\x1f]', ' ', raw_text)

    lines = raw_text.split("\n")
    kept = []

    for line in lines:
        s = line.strip()
        if not s:
            continue
        # Skip page headers/footers
        if re.match(r'^(AUD|FAR|REG|BAR|ISC|TCP)\d+$', s):
            continue
        if "Uniform CPA Examination" in s:
            continue
        if "Content group/topic" in s:
            continue
        if s in ("Skill", "Representative Task"):
            continue
        if "Remembering" in s and ("Application" in s or "Understanding" in s):
            continue
        if s == "& Understanding":
            continue
        if s == "& UnderstandingApplication":
            continue

        kept.append(s)

    # Join all kept lines with spaces
    return " ".join(kept)


def extract_tasks_from_text(section_text, code):
    """Parse normalized section text to extract the full hierarchy.

    Uses regex to find structural markers (Area, Group, Topic headers)
    and task verb boundaries to split content.
    """
    areas = []
    current_area = None
    current_group = None
    current_topic = None

    # Step 1: Find all Area headers and their positions
    area_pattern = re.compile(
        r'Area\s+([IVXlv]+)\s*[–—-]\s*(.+?)\s*\((\d+[–—-]\d+%)\)'
    )

    # Step 2: Find all Group headers: "A. Name" or "A.Name" (squished)
    # Must be preceded by whitespace or start of string
    group_pattern = re.compile(
        r'(?:^|\s)([A-Z])\.(\s*[A-Za-z])'
    )

    # Step 3: Find all Topic headers: "N. Name" where N is 1-9
    topic_pattern = re.compile(
        r'(?:^|\s)(\d+)\.\s*([A-Z])'
    )

    # Instead of trying to parse by position, let's go line-by-line
    # after splitting the joined text at structural boundaries

    # Split the text at Area headers
    area_splits = list(area_pattern.finditer(section_text))

    if not area_splits:
        return areas

    for ai, area_match in enumerate(area_splits):
        area_num = area_match.group(1).replace('l', 'I').replace('v', 'V')
        area_name = area_match.group(2).strip()
        area_weight = area_match.group(3)

        # Skip "(continued)" duplicates
        existing = [a for a in areas if a["area"] == area_num]
        if existing:
            current_area = existing[0]
        else:
            current_area = {
                "area": area_num,
                "name": area_name,
                "weight": area_weight,
                "groups": []
            }
            areas.append(current_area)

        # Get text for this area (up to next area or end)
        start = area_match.end()
        end = area_splits[ai + 1].start() if ai + 1 < len(area_splits) else len(section_text)
        area_text = section_text[start:end]

        # Find groups within this area's text
        # Groups: single uppercase letter followed by period
        # Match "A. Group name" or "A.Groupname"
        group_positions = list(re.finditer(
            r'(?:^|(?<=\s))([A-Z])\.\s*([A-Z][a-z])', area_text
        ))
        # Also catch squished: "H.Debt" or "I.Equity"
        squished_groups = list(re.finditer(
            r'(?:^|(?<=\s)|(?<=[.!?]))([A-Z])\.([A-Z][a-z])', area_text
        ))
        # Merge and deduplicate
        all_group_positions = {}
        for gm in group_positions + squished_groups:
            letter = gm.group(1)
            pos = gm.start()
            if letter not in all_group_positions or pos < all_group_positions[letter][0]:
                all_group_positions[letter] = (pos, gm)

        sorted_groups = sorted(all_group_positions.values(), key=lambda x: x[0])

        for gi, (gpos, gm) in enumerate(sorted_groups):
            group_letter = gm.group(1)
            # Get text for this group
            g_start = gm.start()
            g_end = sorted_groups[gi + 1][0] if gi + 1 < len(sorted_groups) else len(area_text)
            group_text = area_text[g_start:g_end]

            # Extract group name: text between "X." and the first task verb or topic number
            after_dot = group_text[len(group_letter) + 1:].strip()  # Skip "X."

            # Find where content starts (first task verb or topic number)
            first_verb = TASK_VERB_BOUNDARY.search(after_dot)
            first_topic = re.search(r'(?:^|\s)(\d+)\.\s*[A-Z]', after_dot)

            # Group name is everything before the first structural element
            name_end = len(after_dot)
            if first_verb:
                name_end = min(name_end, first_verb.start())
            if first_topic:
                name_end = min(name_end, first_topic.start())

            group_name = after_dot[:name_end].strip()
            # Clean up squished names
            group_name = re.sub(r'([a-z])([A-Z])', r'\1 \2', group_name)
            group_name = re.sub(r'(\))([A-Za-z])', r'\1 \2', group_name)
            group_name = re.sub(r'([a-z])\(', r'\1 (', group_name)
            # Remove "(continued)" and trailing junk
            group_name = re.sub(r'\s*\(continued\)\s*', '', group_name).strip()
            group_name = group_name.rstrip(',').strip()

            if not group_name:
                group_name = f"Group {group_letter}"

            # Find or create group
            existing_g = [g for g in current_area["groups"] if g["letter"] == group_letter]
            if existing_g:
                current_group = existing_g[0]
            else:
                current_group = {
                    "letter": group_letter,
                    "name": group_name,
                    "topics": []
                }
                current_area["groups"].append(current_group)

            # Content after group name
            content = after_dot[name_end:].strip() if name_end < len(after_dot) else ""
            if not content:
                continue

            # Parse content into topics and tasks
            parse_group_content(content, current_group)

    return areas


def parse_group_content(content, group):
    """Parse the content within a group to extract topics and tasks."""

    # Find numbered topics: "1. Topic name TaskVerb..."
    # Topic numbers are 1-20 at most; reject things like "1934." which are years
    topic_splits = [m for m in re.finditer(r'(?:^|\s)(\d+)\.\s*([A-Z])', content)
                    if int(m.group(1)) <= 20]

    if topic_splits:
        # Handle any tasks before the first topic (direct group tasks)
        pre_topic_text = content[:topic_splits[0].start()].strip()
        if pre_topic_text:
            extract_tasks_into(pre_topic_text, group, topic_name="(direct)", topic_num=0)

        # Process each topic
        for ti, tm in enumerate(topic_splits):
            topic_num = int(tm.group(1))
            t_start = tm.start()
            t_end = topic_splits[ti + 1].start() if ti + 1 < len(topic_splits) else len(content)
            topic_text = content[t_start:t_end].strip()

            # Skip the "N." prefix
            after_num = re.sub(r'^\d+\.\s*', '', topic_text)

            # Find where the topic name ends and tasks begin
            first_verb = TASK_VERB_BOUNDARY.search(after_num)
            if first_verb and first_verb.start() > 2:
                topic_name = after_num[:first_verb.start()].strip()
                task_text = after_num[first_verb.start():].strip()
            else:
                topic_name = after_num
                task_text = ""

            # Clean topic name
            topic_name = re.sub(r'([a-z])([A-Z])', r'\1 \2', topic_name)
            topic_name = re.sub(r'\s*\(continued\)\s*', '', topic_name).strip()

            if task_text:
                extract_tasks_into(task_text, group, topic_name=topic_name, topic_num=topic_num)
            else:
                # Topic with no tasks yet — create empty topic
                existing_t = [t for t in group["topics"] if t["number"] == topic_num and t["name"] == topic_name]
                if not existing_t:
                    group["topics"].append({
                        "number": topic_num,
                        "name": topic_name,
                        "tasks": []
                    })
    else:
        # No numbered topics — all tasks belong directly to the group
        extract_tasks_into(content, group, topic_name="(direct)", topic_num=0)


def extract_tasks_into(text, group, topic_name, topic_num):
    """Split text into individual tasks by verb boundaries and add to group/topic."""

    # Find all task boundaries
    verb_positions = list(TASK_VERB_BOUNDARY.finditer(text))

    if not verb_positions:
        return

    # Find or create topic
    existing_t = [t for t in group["topics"] if t["number"] == topic_num and t["name"] == topic_name]
    if existing_t:
        topic = existing_t[0]
    else:
        topic = {
            "number": topic_num,
            "name": topic_name,
            "tasks": []
        }
        group["topics"].append(topic)

    for vi, vm in enumerate(verb_positions):
        start = vm.start()
        end = verb_positions[vi + 1].start() if vi + 1 < len(verb_positions) else len(text)
        task_text = text[start:end].strip()

        # Clean up
        task_text = clean_task(task_text)
        if not task_text or len(task_text) < 10:
            continue

        skill = determine_skill(task_text)
        topic["tasks"].append({
            "skill": skill,
            "task": task_text
        })


def determine_skill(task_text):
    """Determine Bloom's skill level from the task's leading verb."""
    t = task_text.strip().lower()

    # Remembering & Understanding
    if t.startswith(("understand", "recall", "identify the nature", "identify the elements",
                     "identify the factors", "identify the matters", "identify the requirements",
                     "identify the preconditions", "identify a cpa", "identify the purpose",
                     "identify the types", "recognize", "describe", "explain",
                     "distinguish", "classify")):
        return "Remembering and Understanding"

    # Application
    if t.startswith(("apply", "perform", "calculate", "prepare", "document", "construct",
                     "demonstrate", "use ", "draft", "compute", "determine the",
                     "recalculate", "trace", "vouch", "confirm", "inquire", "inspect",
                     "observe", "reperform", "scan")):
        return "Application"

    # Analysis
    if t.startswith(("analyze", "assess", "compare", "examine", "investigate",
                     "interpret", "detect", "evaluate the", "determine whether",
                     "determine if", "conclude", "reconcile", "derive", "review")):
        return "Analysis"

    # Evaluation
    if t.startswith(("evaluate", "recommend", "defend", "resolve", "propose",
                     "design", "develop", "forecast", "integrate", "plan")):
        return "Evaluation"

    # Fallback heuristics
    if t.startswith("identify"):
        return "Remembering and Understanding"
    if t.startswith("determine"):
        return "Application"
    if t.startswith("select"):
        return "Application"
    if t.startswith("adjust"):
        return "Application"
    if t.startswith("extract"):
        return "Application"
    if t.startswith("estimate"):
        return "Application"
    if t.startswith("test"):
        return "Application"
    if t.startswith("verify"):
        return "Application"
    if t.startswith("consider"):
        return "Analysis"
    if t.startswith("summarize"):
        return "Application"
    if t.startswith("report"):
        return "Application"
    if t.startswith("modify"):
        return "Application"
    if t.startswith("revise"):
        return "Application"

    return "Application"  # default


def clean_task(text):
    """Clean up extracted task text."""
    # Normalize whitespace
    text = re.sub(r'\s+', ' ', text).strip()
    # Remove trailing page markers
    text = re.sub(r'\s*(AUD|FAR|REG|BAR|ISC|TCP)\d+\s*$', '', text)
    # Remove tab characters
    text = text.replace('\t', ' ')
    text = re.sub(r'\s+', ' ', text).strip()
    # Remove trailing group/topic markers that leaked in
    text = re.sub(r'\s+[A-Z]\.\s*$', '.', text)
    text = re.sub(r'\s+\d+\.\s*$', '.', text)
    # Ensure ends with period
    if text and not text.endswith('.') and not text.endswith(')'):
        text += '.'
    return text


# ── Main ─────────────────────────────────────────────────────────────

blueprint = {}
for code in ["AUD", "FAR", "REG", "BAR", "ISC", "TCP"]:
    pages = section_pages[code]
    if not pages:
        print(f"WARNING: No blueprint pages found for {code}")
        continue

    # Normalize each page and join
    section_text = " ".join(normalize_page_text(all_text[i]) for i in pages)

    areas = extract_tasks_from_text(section_text, code)
    blueprint[code] = areas

    # Count tasks
    task_count = sum(
        len(t.get("tasks", []))
        for a in areas
        for g in a.get("groups", [])
        for t in g.get("topics", [])
    )
    group_count = sum(len(a["groups"]) for a in areas)
    topic_count = sum(
        len(g.get("topics", []))
        for a in areas
        for g in a.get("groups", [])
    )
    print(f"  {code}: {len(areas)} areas, {group_count} groups, {topic_count} topics, {task_count} representative tasks")

# Write output
with open(OUT_PATH, 'w', encoding='utf-8') as f:
    json.dump(blueprint, f, indent=2, ensure_ascii=False)

print(f"\nWritten to {OUT_PATH}")
