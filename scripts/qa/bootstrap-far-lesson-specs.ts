// Bootstrap FAR lesson-spec scaffolds for lessons that don't have one yet.
// Generates minimal files with primaryRef, topic, and placeholder scope.
//
// Usage: npx tsx scripts/qa/bootstrap-far-lesson-specs.ts [--dry-run]

import { writeFileSync, existsSync } from "fs";
import { resolve, dirname } from "path";
import { fileURLToPath } from "url";

const __dirname = dirname(fileURLToPath(import.meta.url));
const root = resolve(__dirname, "../..");
const outDir = resolve(root, "src/lib/lesson-specs");
const dryRun = process.argv.includes("--dry-run");

interface LessonDef {
	filename: string;
	topic: string;
	primaryRef: string;
	secondaryRefs: string[];
}

const lessons: LessonDef[] = [
	{ filename: "far-financial-reporting-for-profit", topic: "Financial Reporting: For-Profit", primaryRef: "FAR/I/A", secondaryRefs: [] },
	{ filename: "far-statement-of-cash-flows", topic: "Statement of Cash Flows", primaryRef: "FAR/I/A/5", secondaryRefs: [] },
	{ filename: "far-consolidated-financial-statements", topic: "Consolidations", primaryRef: "FAR/I/A/6", secondaryRefs: [] },
	{ filename: "far-not-for-profit", topic: "Not-for-Profit Accounting", primaryRef: "FAR/I/B", secondaryRefs: [] },
	{ filename: "far-state-local-government", topic: "State and Local Government", primaryRef: "FAR/I/C", secondaryRefs: [] },
	{ filename: "far-public-company-reporting", topic: "Public Company Reporting", primaryRef: "FAR/I/D", secondaryRefs: [] },
	{ filename: "far-special-purpose-frameworks", topic: "Special Purpose Frameworks", primaryRef: "FAR/I/E", secondaryRefs: [] },
	{ filename: "far-financial-statement-ratios", topic: "Financial Statement Ratios", primaryRef: "FAR/I/F", secondaryRefs: [] },
	{ filename: "far-cash-and-cash-equivalents", topic: "Cash and Cash Equivalents", primaryRef: "FAR/II/A", secondaryRefs: [] },
	{ filename: "far-trade-receivables", topic: "Trade Receivables", primaryRef: "FAR/II/B", secondaryRefs: [] },
	{ filename: "far-inventory", topic: "Inventory", primaryRef: "FAR/II/C", secondaryRefs: [] },
	{ filename: "far-property-plant-equipment", topic: "Property, Plant and Equipment", primaryRef: "FAR/II/D", secondaryRefs: [] },
	{ filename: "far-investments", topic: "Investments", primaryRef: "FAR/II/E", secondaryRefs: [] },
	{ filename: "far-intangible-assets", topic: "Intangible Assets", primaryRef: "FAR/II/F", secondaryRefs: [] },
	{ filename: "far-payables-and-accrued-liabilities", topic: "Payables and Accrued Liabilities", primaryRef: "FAR/II/G", secondaryRefs: [] },
	{ filename: "far-debt", topic: "Debt", primaryRef: "FAR/II/H", secondaryRefs: [] },
	{ filename: "far-equity", topic: "Equity", primaryRef: "FAR/II/I", secondaryRefs: [] },
	{ filename: "far-accounting-changes", topic: "Accounting Changes and Error Corrections", primaryRef: "FAR/III/A", secondaryRefs: [] },
	{ filename: "far-contingencies", topic: "Contingencies", primaryRef: "FAR/III/B", secondaryRefs: [] },
	{ filename: "far-revenue-recognition", topic: "Revenue Recognition", primaryRef: "FAR/III/C", secondaryRefs: [] },
	{ filename: "far-income-taxes", topic: "Income Taxes", primaryRef: "FAR/III/D", secondaryRefs: [] },
	// far-fair-value already exists (lesson 22)
	// far-leases already exists (lesson 23)
	{ filename: "far-subsequent-events", topic: "Subsequent Events", primaryRef: "FAR/III/G", secondaryRefs: [] },
];

let wrote = 0;
let skipped = 0;

for (const l of lessons) {
	const filePath = resolve(outDir, `${l.filename}.ts`);
	if (existsSync(filePath)) {
		console.log(`SKIP: ${l.filename}.ts (already exists)`);
		skipped++;
		continue;
	}

	const secondaryStr = l.secondaryRefs.length > 0
		? `[${l.secondaryRefs.map(r => `"${r}"`).join(", ")}]`
		: "[]";

	const content = `import type { LessonSpec } from "./types";

export const spec: LessonSpec = {
\ttopic: "${l.topic}",
\tsection: "far",
\tprimaryRef: "${l.primaryRef}",
\tsecondaryRefs: ${secondaryStr},

\tinScope: [
\t\t// TODO: author inScope items for this lesson
\t],

\toutOfScope: [
\t\t// TODO: author outOfScope items for this lesson
\t],

\tkeyStandards: [],

\tcommonMisconceptions: [],

\trepresentativeDifficulty: "mixed",
};
`;

	if (dryRun) {
		console.log(`DRY: would write ${l.filename}.ts`);
	} else {
		writeFileSync(filePath, content);
		console.log(`WROTE: ${l.filename}.ts`);
	}
	wrote++;
}

console.log(`\n${dryRun ? "Would write" : "Wrote"}: ${wrote}, Skipped: ${skipped}`);
