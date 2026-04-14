"""
One-shot fixer for Tier 1 blueprint JSON corruptions surfaced by
scripts/qa/reconcile-blueprint-json.py.

Fixes applied (all verified against the AICPA 2026 Blueprints PDF):
  1. REG Area III rebuild — was a single corrupted area with catastrophic
     name field containing task text and "Area IV" marker. Rebuilt with
     correct groups A (Basis of assets) and B (Cost recovery) from PDF
     page 57.
  2. REG Area IV merge — the current Area III had groups A/B that were
     actually REG Area IV content (Gross income, Reporting from pass-through
     entities). Moved those groups into Area IV as groups A and B, preserving
     the existing C/D/E/F groups in their existing order. Final Area IV has
     6 groups A-F matching PDF pages 58-60.
  3. AUD III/D/1 "Test of controls and test of details" — name field had
     7 tasks' worth of text concatenated into it. Rebuilt name to just the
     topic name and populated tasks array. From PDF page 23.
  4. AUD IV/C/3 "Review engagements" — same failure mode. 2 tasks. From
     PDF page 27.
  5. AUD IV/E/3 "Review of interim financial information" — same failure
     mode. 1 task. From PDF page 28.

This script is idempotent: running it on an already-fixed JSON is a no-op
because the fixes overwrite by structural path.
"""

import json
import sys

JSON_PATH = "alignment/aicpa-blueprint-tasks.json"

with open(JSON_PATH, encoding="utf-8") as f:
    data = json.load(f)

changes = []


# ── Fix 1 + 2: REG Area III rebuild + Area IV merge ──────────────────

reg = data["REG"]

# Find the broken Area III and the existing Area IV
area_iii_idx = next(i for i, a in enumerate(reg) if a["area"] == "III")
area_iv_idx = next(i for i, a in enumerate(reg) if a["area"] == "IV")

old_area_iii = reg[area_iii_idx]
old_area_iv = reg[area_iv_idx]

# Groups A and B currently in Area III are actually REG IV content. Extract them.
pilfered_groups = list(old_area_iii["groups"])  # [Gross income, Reporting from pass-through]
assert len(pilfered_groups) == 2, f"expected 2 pilfered groups, got {len(pilfered_groups)}"
assert pilfered_groups[0]["letter"] == "A"
assert pilfered_groups[1]["letter"] == "B"
assert "Gross income" in pilfered_groups[0]["name"]
assert "pass-through" in pilfered_groups[1]["name"]

# New Area III = Property Transactions with A and B from the PDF
new_area_iii = {
    "area": "III",
    "name": "Federal Taxation of Property Transactions",
    "weight": "5–15%",
    "groups": [
        {
            "letter": "A",
            "name": "Basis of assets",
            "topics": [
                {
                    "number": 0,
                    "name": "(direct)",
                    "tasks": [
                        {
                            "skill": "Application",
                            "task": "Calculate the tax basis of an asset purchased for use in a trade or business.",
                        },
                        {
                            "skill": "Application",
                            "task": "Calculate the tax basis of an asset converted from personal to business use.",
                        },
                        {
                            "skill": "Application",
                            "task": "Calculate the tax basis of property received as a gift or as an inheritance from a decedent.",
                        },
                        {
                            "skill": "Application",
                            "task": "Calculate the tax basis of stock acquired through a wash sale.",
                        },
                        {
                            "skill": "Application",
                            "task": "Calculate the basis of intangible assets, including organization costs, start-up costs and loan costs.",
                        },
                    ],
                }
            ],
        },
        {
            "letter": "B",
            "name": "Cost recovery (depreciation and amortization)",
            "topics": [
                {
                    "number": 0,
                    "name": "(direct)",
                    "tasks": [
                        {
                            "skill": "Application",
                            "task": "Calculate tax depreciation for tangible business property using MACRS, including identification of the applicable recovery period and convention.",
                        },
                        {
                            "skill": "Application",
                            "task": "Determine property eligible for a special depreciation allowance (bonus depreciation) or a Section 179 deduction.",
                        },
                        {
                            "skill": "Application",
                            "task": "Calculate tax amortization for intangible assets.",
                        },
                        {
                            "skill": "Analysis",
                            "task": "Review a tax depreciation and amortization schedule for the current year and supporting documentation, including any source data used to create the schedule, to determine the completeness and accuracy of the expense amounts deducted for tax purposes.",
                        },
                        {
                            "skill": "Analysis",
                            "task": "Review and resolve discrepancies identified by automated diagnostic and validation checks to ensure the completeness and accuracy of the depreciation and amortization expense reported on a tax return based on the source data used to prepare the return.",
                        },
                    ],
                }
            ],
        },
    ],
}

# New Area IV = pilfered A + pilfered B + existing C/D/E/F
new_area_iv = {
    "area": "IV",
    "name": "Federal Taxation of Individuals",
    "weight": "22–32%",
    "groups": pilfered_groups + old_area_iv["groups"],
}

# Also clean up mojibake characters in existing Area IV tasks (the � in � and �)
def clean_mojibake(obj):
    if isinstance(obj, str):
        return (
            obj.replace("\u2013", "–")  # preserve real en-dash
            .replace("\u2014", "—")  # preserve real em-dash
            .replace("�", "’")  # best-effort for curly apostrophe
            .replace("\t", " ")
        )
    if isinstance(obj, list):
        return [clean_mojibake(x) for x in obj]
    if isinstance(obj, dict):
        return {k: clean_mojibake(v) for k, v in obj.items()}
    return obj


# Only clean mojibake in the groups we're moving/adding — not globally (could
# have unintended side effects on other sections that already parse cleanly).
new_area_iv["groups"] = clean_mojibake(new_area_iv["groups"])

# Replace Area III with rebuilt content, then Area IV with merged content.
# Preserve array order: assume original has III before IV (verified above).
reg[area_iii_idx] = new_area_iii
reg[area_iv_idx] = new_area_iv

changes.append("REG Area III — rebuilt from PDF (2 groups, 10 tasks)")
changes.append("REG Area IV — merged pilfered A/B with existing C-F (6 groups total)")


# ── Fix 3: AUD III/D/1 Test of controls and test of details ──────────

def find_topic(section_code, area_id, group_letter, topic_num):
    sec = data[section_code]
    area = next(a for a in sec if a["area"] == area_id)
    group = next(g for g in area["groups"] if g["letter"] == group_letter)
    topic = next(t for t in group["topics"] if t["number"] == topic_num)
    return topic


topic = find_topic("AUD", "III", "D", 1)
assert topic["name"].startswith("Test of controls"), f"unexpected: {topic['name'][:50]}"
topic["name"] = "Test of controls and test of details"
topic["tasks"] = [
    {
        "skill": "Application",
        "task": "Use observation and inspection to obtain evidence.",
    },
    {
        "skill": "Application",
        "task": "Use recalculation (manually or using automated tools and techniques) to test the mathematical accuracy of information to obtain evidence.",
    },
    {
        "skill": "Application",
        "task": "Use reperformance to independently execute procedures or controls to obtain evidence.",
    },
    {
        "skill": "Application",
        "task": "Inquire of management and others to gather evidence and document the results.",
    },
    {
        "skill": "Analysis",
        "task": "Analyze responses obtained during structured interviews or informal conversations with management and others, including those in non-financial roles, and ask relevant and effective follow-up questions to understand their perspectives and motivations.",
    },
    {
        "skill": "Application",
        "task": "Perform tests of operating effectiveness of internal controls, including the analysis of exceptions to identify deficiencies in an audit of financial statements or an audit of internal control.",
    },
    {
        "skill": "Application",
        "task": "Perform tests of details, including the analysis of exceptions, to identify potential misstatements in an audit of financial statements.",
    },
]
changes.append("AUD III/D/1 — rebuilt (7 tasks)")


# ── Fix 4: AUD IV/C/3 Review engagements ─────────────────────────────

topic = find_topic("AUD", "IV", "C", 3)
assert topic["name"].startswith("Review engagements"), f"unexpected: {topic['name'][:50]}"
topic["name"] = "Review engagements"
topic["tasks"] = [
    {
        "skill": "Remembering and Understanding",
        "task": "Identify the factors that an accountant should consider when reporting on an engagement to review an entity’s financial statements.",
    },
    {
        "skill": "Application",
        "task": "Determine the appropriate form and content of an accountant’s report for a review engagement.",
    },
]
changes.append("AUD IV/C/3 — rebuilt (2 tasks)")


# ── Fix 5: AUD IV/E/3 Review of interim financial information ────────

topic = find_topic("AUD", "IV", "E", 3)
assert topic["name"].startswith("Review of interim"), f"unexpected: {topic['name'][:50]}"
topic["name"] = "Review of interim financial information"
topic["tasks"] = [
    {
        "skill": "Remembering and Understanding",
        "task": "Identify the factors an auditor should consider when reporting on an engagement to review interim financial information.",
    },
]
changes.append("AUD IV/E/3 — rebuilt (1 task)")


# ── Write back ───────────────────────────────────────────────────────

with open(JSON_PATH, "w", encoding="utf-8") as f:
    json.dump(data, f, indent=2, ensure_ascii=False)
    f.write("\n")

print("Tier 1 fixes applied:")
for c in changes:
    print(f"  - {c}")
print(f"\nWrote {JSON_PATH}")
