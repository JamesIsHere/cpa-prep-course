// One-off audit: verify framework coverage per AICPA blueprint group
// Usage: npx tsx scripts/qa/_audit-frameworks.ts

import { farFramework } from "../../src/lib/study-frameworks/far";
import { allSections } from "../../src/lib/sections";
import { existsSync } from "fs";
import { resolve, dirname } from "path";
import { fileURLToPath } from "url";

const __dirname = dirname(fileURLToPath(import.meta.url));
const root = resolve(__dirname, "../..");

// ── 1. Framework items per blueprint group ──

type Counts = { cm: number; dt: number; fm: number; rt: number; mn: number };
const groups: Record<string, Counts> = {};
const init = (g: string) => {
	if (!groups[g]) groups[g] = { cm: 0, dt: 0, fm: 0, rt: 0, mn: 0 };
};

for (const item of farFramework.conceptMaps)
	for (const g of item.blueprintGroups || []) {
		init(g);
		groups[g].cm++;
	}
for (const item of farFramework.decisionTrees)
	for (const g of item.blueprintGroups || []) {
		init(g);
		groups[g].dt++;
	}
for (const item of farFramework.formulas)
	for (const g of item.blueprintGroups || []) {
		init(g);
		groups[g].fm++;
	}
for (const item of farFramework.referenceTables)
	for (const g of item.blueprintGroups || []) {
		init(g);
		groups[g].rt++;
	}
for (const item of farFramework.mnemonics)
	for (const g of item.blueprintGroups || []) {
		init(g);
		groups[g].mn++;
	}

const expected = [
	"far.1.A", "far.1.B", "far.1.C", "far.1.D", "far.1.E", "far.1.F",
	"far.2.A", "far.2.B", "far.2.C", "far.2.D", "far.2.E", "far.2.F",
	"far.2.G", "far.2.H", "far.2.I",
	"far.3.A", "far.3.B", "far.3.C", "far.3.D", "far.3.E", "far.3.F", "far.3.G",
];

console.log("\n═══ 1. STRUCTURED FRAMEWORK ITEMS PER AICPA GROUP ═══\n");
console.log(
	"Group".padEnd(10), "CM".padStart(3), "DT".padStart(3), "FM".padStart(3),
	"RT".padStart(3), "MN".padStart(3), "Total".padStart(6),
);
console.log("─".repeat(38));

let totalAll = 0;
const zeroGroups: string[] = [];
for (const g of expected) {
	const c = groups[g] || { cm: 0, dt: 0, fm: 0, rt: 0, mn: 0 };
	const total = c.cm + c.dt + c.fm + c.rt + c.mn;
	totalAll += total;
	if (total === 0) zeroGroups.push(g);
	console.log(
		g.padEnd(10),
		String(c.cm).padStart(3), String(c.dt).padStart(3), String(c.fm).padStart(3),
		String(c.rt).padStart(3), String(c.mn).padStart(3), String(total).padStart(6),
		total === 0 ? "⚠️" : "",
	);
}
console.log("─".repeat(38));
console.log("TOTAL".padEnd(10), "".padStart(3), "".padStart(3), "".padStart(3), "".padStart(3), "".padStart(3), String(totalAll).padStart(6));

if (zeroGroups.length > 0) {
	console.log(`\n❌ ${zeroGroups.length} groups with ZERO structured items: ${zeroGroups.join(", ")}`);
} else {
	console.log("\n✅ All 22 AICPA groups have structured framework items.");
}

// Legacy tags
const extraGroups = Object.keys(groups).filter((g) => !expected.includes(g)).sort();
if (extraGroups.length > 0) {
	console.log(`\n⚠️  ${extraGroups.length} legacy blueprint group tags (not in 2026 AICPA):`);
	for (const g of extraGroups) {
		const c = groups[g];
		console.log(`  ${g}: ${c.cm + c.dt + c.fm + c.rt + c.mn} items`);
	}
}

// ── 2. Grand totals ──

console.log("\n═══ 2. GRAND TOTALS ═══\n");
console.log("  Concept maps:    ", farFramework.conceptMaps.length);
console.log("  Decision trees:  ", farFramework.decisionTrees.length);
console.log("  Formulas:        ", farFramework.formulas.length);
console.log("  Reference tables:", farFramework.referenceTables.length);
console.log("  Mnemonics:       ", farFramework.mnemonics.length);
const grand =
	farFramework.conceptMaps.length + farFramework.decisionTrees.length +
	farFramework.formulas.length + farFramework.referenceTables.length +
	farFramework.mnemonics.length;
console.log("  TOTAL:           ", grand);

// ── 3. Lesson MDX verification ──

console.log("\n═══ 3. FAR LESSON MDX VERIFICATION ═══\n");
const farSection = allSections.find((s) => s.code === "far");
if (!farSection) {
	console.error("❌ FAR section not found in sections.ts");
	process.exit(1);
}

let missingMdx = 0;
for (const lesson of farSection.lessons) {
	const mdxPath = resolve(root, "src/content", `${lesson.contentPath}.mdx`);
	const exists = existsSync(mdxPath);
	if (!exists) {
		console.log(`  ❌ MISSING: ${lesson.slug} → ${lesson.contentPath}.mdx`);
		missingMdx++;
	}
}
if (missingMdx === 0) {
	console.log(`✅ All ${farSection.lessons.length} FAR lessons have MDX files.`);
} else {
	console.log(`\n❌ ${missingMdx} MDX files missing.`);
}

// ── 4. V1/V2/V3 framework files ──

console.log("\n═══ 4. DEEP FRAMEWORK FILES ═══\n");
const fwFiles = ["frameworks/V1.md", "frameworks/V2.md", "frameworks/V2-Supplement.md", "frameworks/V3-draft.md", "frameworks/far-frameworks.xlsx"];
for (const f of fwFiles) {
	const p = resolve(root, f);
	const exists = existsSync(p);
	console.log(`  ${exists ? "✅" : "❌"} ${f}`);
}

// ── 5. Traceability files ──

console.log("\n═══ 5. TRACEABILITY FILES ═══\n");
const traceFiles = [
	"alignment/csv/aicpa-far-blueprint-mapping.csv",
	"alignment/csv/far-framework-traceability.csv",
	"alignment/csv/far-framework-traceability.xlsx",
];
for (const f of traceFiles) {
	const p = resolve(root, f);
	const exists = existsSync(p);
	console.log(`  ${exists ? "✅" : "❌"} ${f}`);
}

// ── 6. CSV structured count vs actual ──

console.log("\n═══ 6. TRACEABILITY CSV COUNT VALIDATION ═══\n");
import { readFileSync } from "fs";

const csvContent = readFileSync(resolve(root, "alignment/csv/far-framework-traceability.csv"), "utf-8");
const csvLines = csvContent.replace(/\r\n/g, "\n").split("\n").filter((l) => l.trim());
// Simple CSV parse for structured count column (index 7)
let mismatches = 0;
for (let i = 1; i < csvLines.length; i++) {
	// Parse carefully for quoted fields
	const fields: string[] = [];
	let current = "";
	let inQuotes = false;
	for (const ch of csvLines[i]) {
		if (ch === '"') { inQuotes = !inQuotes; }
		else if (ch === "," && !inQuotes) { fields.push(current); current = ""; }
		else { current += ch; }
	}
	fields.push(current);

	const group = fields[3]?.trim(); // AICPA Group letter
	const area = fields[0]?.trim();  // Area number (I, II, III)
	const csvCount = parseInt(fields[7]?.trim() || "0", 10);

	// Map to blueprint group ID
	const areaNum = area === "I" ? 1 : area === "II" ? 2 : 3;
	const bpGroup = `far.${areaNum}.${group}`;

	const c = groups[bpGroup] || { cm: 0, dt: 0, fm: 0, rt: 0, mn: 0 };
	const actualCount = c.cm + c.dt + c.fm + c.rt + c.mn;

	if (csvCount !== actualCount) {
		console.log(`  ⚠️  ${bpGroup}: CSV says ${csvCount}, actual is ${actualCount}`);
		mismatches++;
	}
}
if (mismatches === 0) {
	console.log("✅ All CSV structured counts match actual far.ts item counts.");
} else {
	console.log(`\n⚠️  ${mismatches} count mismatches between CSV and far.ts.`);
}

// ── Summary ──
console.log("\n" + "═".repeat(50));
console.log("AUDIT COMPLETE");
console.log("═".repeat(50));
