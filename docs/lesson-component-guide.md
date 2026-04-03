# Lesson Component Style Guide

Reference for writing framework-first MDX lessons. All components are registered in `src/mdx-components.tsx` and available in any `.mdx` file.

Established 2026-04-03 during FAR Income Taxes pilot. These patterns are mandatory for all future lesson rewrites.

## Components

### DecisionTree (`<FrameworkDecisionTree>`)

Renders as a visual flowchart, not indented text.

- **Question nodes**: indigo boxes, centered
- **Outcome leaves**: green box (Yes path), red box (No path)
- **Connecting lines**: gray lines with Yes/No labels matching leaf colors (emerald-700 / red-700)
- Data source: `decisionTrees` array in section framework file (e.g., `far.ts`)

```mdx
<FrameworkDecisionTree groupId="far.3.D" title="Uncertain Tax Position (ASC 740-10)" />
```

**Rule**: Never render decision logic as bullet lists or indented text. Always use the flowchart component.

### ConceptMap (`<FrameworkConceptMap>`)

Renders as tiered color-coded pills with matching header/total pairs.

- **Depth 0 (indigo)**: Top-level category
- **Depth 1 (green)**: Major subcategories
- **Depth 2 (amber)**: Sub-subcategories
- **Depth 3+ (gray)**: Lowest tier
- **Detail lines**: White background, gray text, indented between header and total
- **Total rows**: Same color and indentation as their opening header. Identified by `=` prefix in data (stripped on render)
- **No accent borders**: Color-matching between header and total does the visual work
- **No equals signs displayed**: Totals say "Total X" or "Net X", not "= Total X"

```mdx
<FrameworkConceptMap groupId="far.3.D" title="Income Tax Accounting (ASC 740)" />
```

**Rule**: Every branch that opens must close with a total at the same visual level. No dangling hierarchies.

### RateWaterfall (`<RateWaterfall>`)

Renders as a clean financial statement reconciliation table.

- **Columns**: Item | Rate | Amount (amount column appears only if any row has one)
- **Start/result rows**: Indigo background, bold text
- **Adjustment rows**: White background, neutral gray text — no color-coding
- **Signs**: Parentheses for reductions, `+` prefix for additions. Accounting notation only.
- **Dollar amounts**: Include when possible. Rate × pre-tax income. Helps learners trace the math.

```mdx
<RateWaterfall preTaxIncome="$1,000,000" items={[
  { label: "Statutory federal rate", rate: "21.0%", amount: "$210,000", type: "start" },
  { label: "Municipal bond interest (permanent)", rate: "(2.1%)", amount: "($21,000)", type: "adjust" },
  { label: "Effective rate", rate: "23.7%", amount: "$237,000", type: "result" },
]} />
```

**Rule**: Never color-code rate adjustments as green/red. Parentheses = reduction, positive = addition. The notation carries the semantics.

### DeepDive (`<DeepDive>`)

Collapsible section for interdisciplinary context, analogies, and deeper conceptual exploration.

- Indigo border, collapsed by default
- Use for content that enriches understanding but isn't required for exam competency
- Do not use for core testable material — that belongs in the main lesson flow

```mdx
<DeepDive title="Why two systems? The interdisciplinary deep dive">
  Content here...
</DeepDive>
```

### Framework Data Components

All pull from structured TypeScript data in `src/lib/study-frameworks/{section}.ts`:

| Component | Data source | Filter prop |
|-----------|-------------|-------------|
| `<FrameworkConceptMap>` | `conceptMaps` | `title` |
| `<FrameworkDecisionTree>` | `decisionTrees` | `title` |
| `<FrameworkFormula>` | `formulas` | `name` |
| `<FrameworkTable>` | `referenceTables` | `title` |
| `<FrameworkMnemonic>` | `mnemonics` | `acronym` |

All require `groupId` (e.g., `"far.3.D"`). Optional filter prop renders a specific item; omit to render all items for that group.

### QuickCheck (`<QuickCheck>`)

Inline comprehension check. Pre-existing component, not modified in this session.

## Anti-Patterns

These were discovered during the Income Taxes pilot. Do not repeat them.

| Anti-pattern | Why it fails | Correct approach |
|-------------|-------------|-----------------|
| Green down-arrow / red up-arrow | "Down = bad" conflicts with "green = good" | Use accounting notation (parentheses/plus signs) with neutral colors |
| Bullet lists for hierarchies | Wall of text, no visual structure | Use ConceptMap with tiered colors |
| Indented text for decision logic | Doesn't convey branching | Use DecisionTree flowchart |
| Color-coding rate adjustments | Forces learner to decode two systems | Neutral rows, let signs speak |
| Hierarchy without closing totals | Learner can't close the loop | Every header gets a matching total |
| Left-border accent lines on totals | Too busy, doesn't reinforce closure | Match total color/indent to header |

## Lesson Architecture

Decided 2026-04-03. See also: `memory/project_lesson_rewrite.md`.

- Framework prose (V1/V2/V3 deep content) drives the MDX narrative
- Structured framework items (`far.ts` etc.) render inline via components — never duplicate data into prose
- Mechanical details (journal entries, computations) fill gaps the framework doesn't cover
- Topics with deep frameworks (19/22 FAR groups): framework opens, structured items inline, mechanics fill
- Topics without deep frameworks (3 groups): concept map opens, procedures, structured items inline
- Same page layout regardless — student doesn't know which type they're in

## File Locations

| File | Purpose |
|------|---------|
| `src/mdx-components.tsx` | Component registration for MDX |
| `src/components/framework-preview.tsx` | ConceptMap, DecisionTree, Formula, Table, Mnemonic renderers |
| `src/components/framework-inline.tsx` | Data-fetching wrappers that connect MDX to framework TypeScript |
| `src/components/deep-dive.tsx` | Collapsible deep dive component |
| `src/components/rate-waterfall.tsx` | Rate reconciliation table |
| `src/lib/study-frameworks/*.ts` | Structured framework data per section |
| `docs/lesson-component-guide.md` | This file |
