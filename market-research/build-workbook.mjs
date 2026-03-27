import XLSX from "xlsx";
import { readFileSync, writeFileSync, copyFileSync } from "fs";
import { resolve } from "path";

const wb = XLSX.utils.book_new();

// ─────────────────────────────────────────────
// Sheet 1: AICPA FAR Blueprint Mapping
// ─────────────────────────────────────────────
const csvPath = resolve("docs/aicpa-far-blueprint-mapping.csv");
const csvText = readFileSync(csvPath, "utf-8");
const csvWs = XLSX.utils.aoa_to_sheet(
	csvText.split("\n").map((row) => {
		// Handle quoted CSV fields properly
		const fields = [];
		let current = "";
		let inQuotes = false;
		for (let i = 0; i < row.length; i++) {
			if (row[i] === '"') {
				inQuotes = !inQuotes;
			} else if (row[i] === "," && !inQuotes) {
				fields.push(current);
				current = "";
			} else {
				current += row[i];
			}
		}
		fields.push(current);
		return fields;
	}),
);
// Set column widths
csvWs["!cols"] = [
	{ wch: 12 },
	{ wch: 30 },
	{ wch: 12 },
	{ wch: 8 },
	{ wch: 55 },
	{ wch: 10 },
	{ wch: 40 },
	{ wch: 16 },
	{ wch: 90 },
	{ wch: 10 },
	{ wch: 50 },
	{ wch: 45 },
];
XLSX.utils.book_append_sheet(wb, csvWs, "AICPA Blueprint Mapping");

// ─────────────────────────────────────────────
// Sheet 2: Competition
// ─────────────────────────────────────────────
const compData = [
	["CPA Review Course — Competitive Landscape"],
	[],
	[
		"#",
		"Competitor",
		"Tier",
		"Share Low",
		"Share High",
		"Cost Low",
		"Cost High",
		"Status",
		"Notes",
	],
	[
		1,
		"Becker",
		"Premium",
		"40%",
		"50%",
		"$2,500",
		"$5,000",
		"Independent",
		'Owned by Colibri Group. 72% of Big 4 recruits report firm recommends/provides Becker. ~2M cumulative users. Est. revenue $84-322M (sources vary).',
	],
	[
		2,
		"UWorld Accounting",
		"Premium",
		"15%",
		"20%",
		"$1,600",
		"$4,100",
		"Consolidated",
		"Acquired Roger CPA (2019), Wiley CPAexcel (2023). Rebranded Aug 2023. Poached Peter Olinto from Becker. 9,000+ MCQs. Claims 90% pass rate.",
	],
	[
		3,
		"Surgent",
		"Mid-tier",
		"8%",
		"12%",
		"$800",
		"$1,700",
		"Independent",
		"300+ university partnerships. Strong adaptive tech (A.S.A.P. Technology). Claims 88-92% pass rate.",
	],
	[
		4,
		"Gleim",
		"Mid-tier",
		"5%",
		"8%",
		"$1,000",
		"$1,800",
		"Independent",
		"Largest question bank. Long-established. Known for volume of MCQs.",
	],
	[
		5,
		"Ninja CPA",
		"Budget",
		"5%",
		"8%",
		"$67/mo",
		"$87/mo",
		"Independent",
		"Monthly subscription model. Huge Reddit presence. Budget pick. LTV ~$536 (8 months avg).",
	],
	[
		6,
		"I-75 (Darius Clark)",
		"Budget",
		"2%",
		"4%",
		"$500",
		"$800",
		"Independent",
		"Solo instructor. 5,000+ MCQs. 91% claimed pass rate. Strong YouTube following.",
	],
	[
		7,
		"Yaeger CPA Review",
		"Other",
		"",
		"",
		"",
		"",
		"",
		"Budget option, video-heavy, been around a long time",
	],
	[
		8,
		"Fast Forward Academy",
		"Other",
		"",
		"",
		"",
		"",
		"",
		"Adaptive learning focus, smaller player",
	],
	[
		9,
		"Lambers CPA Review",
		"Other",
		"",
		"",
		"",
		"",
		"",
		"Old school, mostly self-study textbook style",
	],
	[
		10,
		"SuperfastCPA",
		"Supplement",
		"",
		"",
		"",
		"",
		"",
		"Condensed notes, audio. Not a full course.",
	],
	[
		11,
		"Universal CPA Review",
		"Other",
		"",
		"",
		"",
		"",
		"",
		"Newer entrant, adaptive",
	],
	[
		12,
		"Farhat Accounting Lectures",
		"Free",
		"",
		"",
		"",
		"",
		"",
		"Free YouTube. Huge following with accounting students.",
	],
	[],
	["UWorld Acquisition Timeline"],
	["Date", "Event"],
	["July 2019", "UWorld acquires Roger CPA Review"],
	["March 2023", "UWorld acquires Wiley Efficient Learning (CPAexcel)"],
	[
		"August 2023",
		'Rebrands to "UWorld Accounting." Peter Olinto joins from Becker.',
	],
	["2024+", "Single combined product: UWorld CPA Review"],
];
const compWs = XLSX.utils.aoa_to_sheet(compData);
compWs["!cols"] = [
	{ wch: 5 },
	{ wch: 28 },
	{ wch: 12 },
	{ wch: 10 },
	{ wch: 10 },
	{ wch: 10 },
	{ wch: 10 },
	{ wch: 14 },
	{ wch: 100 },
];
XLSX.utils.book_append_sheet(wb, compWs, "Competition");

// ─────────────────────────────────────────────
// Sheet 3: Market Sizing
// ─────────────────────────────────────────────
const marketData = [
	["CPA Exam Market Sizing"],
	[],
	["CPA Exam Candidates Per Year"],
	[],
	[
		"#",
		"Year",
		"Unique Candidates",
		"New Candidates",
		"Passed Final Section",
		"Source",
	],
	[1, 2021, 72271, "", "", "Going Concern / NASBA"],
	[2, 2022, 67336, "", "", "Going Concern / NASBA"],
	[3, 2023, 80000, 42626, "", "NASBA blog (rush pre-CPA Evolution)"],
	[4, 2024, 74165, 27994, 13070, "NASBA 2024 Performance Book"],
	[],
	[
		"Note: 2024 new candidates (27,994) is the lowest since NASBA began tracking in 2008.",
	],
	[
		"Note: 2023 spike due to candidates rushing before CPA Evolution launch Jan 2024.",
	],
	[
		'Note: "Unique Candidate" = one person who sat for at least one section that year.',
	],
	[
		'Note: "New Candidate" = sitting for the CPA exam for the first time ever.',
	],
	[],
	[],
	["Pass Rates by Section (2024-2025)"],
	[],
	["#", "Section", "Pass Rate Low", "Pass Rate High"],
	[1, "FAR", "40%", "43%"],
	[2, "AUD", "46%", "48%"],
	[3, "REG", "58%", "64%"],
	[4, "TCP", "82%", "82%"],
	[5, "ISC", "51%", "51%"],
	[6, "BAR", "41%", "41%"],
	[],
	[],
	["Study Time Benchmarks"],
	[],
	["Measure", "Low", "High"],
	["Total study hours", 400, 600],
	["Months to pass all sections", 6, 12],
	["Rolling window to pass all sections", "30 months", ""],
	["First-attempt fail rate per section", "~50%", ""],
	[],
	[],
	["Total Market Revenue Estimate"],
	[],
	["Scenario", "Rolling Testers", "Avg Spend Low", "Avg Spend High", "Market Low", "Market High"],
	[
		"Low",
		70000,
		"$1,500",
		"$2,000",
		"$105,000,000",
		"$140,000,000",
	],
	[
		"Estimate",
		74000,
		"$1,500",
		"$2,000",
		"$111,000,000",
		"$148,000,000",
	],
	[
		"High",
		80000,
		"$1,500",
		"$2,000",
		"$120,000,000",
		"$160,000,000",
	],
	[],
	["Blended Average Customer Spend"],
	["Provider", "LTV"],
	["Ninja ($67/mo x 8 months)", "$536"],
	["Becker (one-time)", "$5,000"],
	["Blended average (all providers)", "~$2,768"],
];
const marketWs = XLSX.utils.aoa_to_sheet(marketData);
marketWs["!cols"] = [
	{ wch: 14 },
	{ wch: 20 },
	{ wch: 20 },
	{ wch: 20 },
	{ wch: 22 },
	{ wch: 50 },
];
XLSX.utils.book_append_sheet(wb, marketWs, "Market Sizing");

// ─────────────────────────────────────────────
// Sheet 4: Advertising & CAC
// ─────────────────────────────────────────────
const adData = [
	["Advertising Cost & Customer Acquisition Analysis"],
	[],
	["Cost Per Click by Channel"],
	[],
	["Channel", "CPC Low", "CPC High", "Best For", "Notes"],
	["Reddit Organic", "$0", "$0", "Building trust, long game", "Post value in r/CPA, r/Accounting. Free but slow."],
	["Reddit Ads", "$0.50", "$2.00", "Niche targeting (r/CPA subs)", "Cheapest paid option. Can target exact subreddits."],
	["Facebook/Instagram Ads", "$0.60", "$1.50", "Broad awareness, retargeting", 'Good for "just graduated" demographic targeting.'],
	["Google Ads (Education)", "$4.00", "$6.23", "High intent searches", "Education CPC spiked 42% in 2025. Most expensive. $6.23 avg for education."],
	["YouTube Ads", "$0.10", "$0.30", "Brand awareness, demo videos", "Pre-roll on CPA study videos. Cheap impressions."],
	["TikTok Ads", "$0.50", "$1.00", "Younger candidates, awareness", "Accounting TikTok is a real niche."],
	[],
	[],
	["Conversion Funnel Benchmarks (Education/SaaS)"],
	[],
	["Stage", "Rate", "Source"],
	["Ad impression → Click (CTR)", "~5%", "Education Google Ads benchmark (5.7%)"],
	["Click → Free trial/signup", "~10%", "Education landing page benchmark (11.4% CVR)"],
	["Free trial → Paid subscriber", "~25%", "EdTech trial-to-paid benchmark (24.8%)"],
	["Click → Paid (combined)", "~2.5%", "Calculated: 10% x 25%"],
	["Clicks needed per 1 paid customer", "~40", "Calculated: 1 / 2.5%"],
	[],
	[],
	["Customer Acquisition Cost (CAC) by Channel"],
	[],
	["Channel", "CPC (est)", "Clicks to Convert", "CAC", "LTV", "LTV:CAC"],
	["Reddit Organic", "$0", "N/A", "~$0", "$240", "Infinite"],
	["Reddit Ads", "$1.00", 40, "$40", "$240", "6.0x"],
	["Facebook Ads", "$1.00", 40, "$40", "$240", "6.0x"],
	["Google Ads", "$6.23", 40, "$249", "$240", "1.0x (break even)"],
	["YouTube Ads", "$0.20", 40, "$8", "$240", "30x (but low intent)"],
	[],
	[],
	["Slayer CPA Unit Economics"],
	[],
	["Metric", "Value"],
	["Monthly price", "$29.99"],
	["Average months subscribed", "8"],
	["Customer Lifetime Value (LTV)", "$240"],
	["Target CAC (for 6:1 LTV:CAC)", "$40"],
	["Target CAC (for 3:1 LTV:CAC)", "$80"],
	[],
	[],
	["Recommended Approach (Phased)"],
	[],
	["Phase", "Channel", "Budget", "Goal"],
	["1 - Free", "Reddit organic (r/CPA, r/Accounting)", "$0", "Build trust, get first 10-20 users, learn what resonates"],
	["2 - Test", "Reddit Ads targeting CPA subreddits", "$500", "Validate CAC < $50. Test ad creative."],
	["3 - Scale", "Reddit Ads + Facebook retargeting", "$1-2K/mo", "Scale what works from Phase 2"],
	["4 - Expand", "Add YouTube pre-roll, maybe TikTok", "$2-5K/mo", "Brand awareness to feed top of funnel"],
	["Skip for now", "Google Ads", "N/A", "Too expensive at $6.23 CPC for a $30/mo product"],
];
const adWs = XLSX.utils.aoa_to_sheet(adData);
adWs["!cols"] = [
	{ wch: 40 },
	{ wch: 16 },
	{ wch: 18 },
	{ wch: 35 },
	{ wch: 65 },
	{ wch: 14 },
];
XLSX.utils.book_append_sheet(wb, adWs, "Advertising & CAC");

// ─────────────────────────────────────────────
// Sheet 5: Lesson Manifest (proposed 24 lessons)
// ─────────────────────────────────────────────
const lessonData = [
	["FAR Lesson Manifest — Aligned to AICPA 2026 Blueprint"],
	[],
	["#", "Lesson Title", "AICPA Code", "AICPA Group Name", "Status", "Notes"],
	[1, "Financial Reporting: For-Profit Entities", "I.A", "General-Purpose Financial Reporting: For-Profit Business Entities", "REFACTOR", "Absorb old intro + financial statement presentation. Covers topics 1-4, 7 (BS, IS, OCI, equity stmt, notes)."],
	[2, "Statement of Cash Flows", "I.A.5", "(subtopic 5 within I.A)", "EXISTING", "Already written from earlier restructure."],
	[3, "Consolidated Financial Statements", "I.A.6", "(subtopic 6 within I.A)", "EXISTING", "Move from Area III to Area I. Already written (19-consolidations)."],
	[4, "Financial Reporting: Not-for-Profit Entities", "I.B", "General-Purpose Financial Reporting: Nongovernmental NFP Entities", "EXISTING", "Refactor from 21-not-for-profit. Move to Area I."],
	[5, "State and Local Government Concepts", "I.C", "State and Local Government Concepts", "MERGE", "Merge lessons 22 + 23 back into one lesson."],
	[6, "Public Company Reporting and EPS", "I.D", "Public Company Reporting Topics", "REFACTOR", "Refactor from 04-earnings-per-share. Add SEC 10-Q/10-K/8-K content."],
	[7, "Special Purpose Frameworks", "I.E", "Special Purpose Frameworks", "EXISTING", "Already written (06-special-purpose-frameworks)."],
	[8, "Financial Statement Ratios and Performance Metrics", "I.F", "Financial Statement Ratios and Performance Metrics", "NEW", "Profitability, liquidity, solvency ratios. Budget variances."],
	[9, "Cash and Cash Equivalents", "II.A", "Cash and cash equivalents", "SPLIT", "Split from old 07-cash-and-receivables."],
	[10, "Trade Receivables", "II.B", "Trade receivables", "SPLIT", "Split from old 07-cash-and-receivables. CECL, factoring, pledging."],
	[11, "Inventory", "II.C", "Inventory", "EXISTING", "Rename from 09-inventory."],
	[12, "Property, Plant and Equipment", "II.D", "Property, plant and equipment", "EXISTING", "Rename from 10-fixed-assets."],
	[13, "Investments", "II.E", "Investments", "NEW", "Fair value, amortized cost, equity method investments."],
	[14, "Intangible Assets", "II.F", "Intangible assets", "EXISTING", "Rename from 11-intangible-assets."],
	[15, "Payables and Accrued Liabilities", "II.G", "Payables and accrued liabilities", "EXISTING", "Already written (12-payables-and-accrued-liabilities)."],
	[16, "Debt", "II.H", "Debt (financial liabilities)", "EXISTING", "Rename from 14-bonds-and-debt."],
	[17, "Equity", "II.I", "Equity", "EXISTING", "Rename from 15-equity."],
	[18, "Accounting Changes and Error Corrections", "III.A", "Accounting changes and error corrections", "EXISTING", "Already written (16-accounting-changes)."],
	[19, "Contingencies and Commitments", "III.B", "Contingencies and commitments", "EXISTING", "Rename from 17-contingencies."],
	[20, "Revenue Recognition", "III.C", "Revenue recognition", "EXISTING", "Move from Area II to Area III. Rename from 08-revenue-recognition."],
	[21, "Income Taxes", "III.D", "Accounting for income taxes", "EXISTING", "Rename from 18-income-taxes."],
	[22, "Fair Value Measurements", "III.E", "Fair value measurements", "EXISTING", "Rename from 20-fair-value."],
	[23, "Lessee Accounting", "III.F", "Lessee accounting", "EXISTING", "Move from Area II to Area III. Rename from 13-leases."],
	[24, "Subsequent Events", "III.G", "Subsequent events", "NEW", "Identifying, calculating adjustments, deriving impact."],
	[],
	["Dropped Lessons"],
	["Old Lesson", "Disposition"],
	["01-intro", "Absorbed into lesson 01 (For-Profit Financial Reporting)"],
	["05-employee-benefit-plans", "No AICPA FAR group. Content folded into relevant lessons or flagged for removal."],
	[],
	["Summary"],
	["Total lessons", 24],
	["New to write", "3 (Ratios, Investments, Subsequent Events)"],
	["Refactor/merge", "4 (For-Profit, EPS→Public Company, Govt merge, NFP move)"],
	["Split", "1 (Cash & Receivables → 2 lessons)"],
	["Rename only", "14"],
	["Drop", "2 (Intro, Employee Benefits)"],
];
const lessonWs = XLSX.utils.aoa_to_sheet(lessonData);
lessonWs["!cols"] = [
	{ wch: 5 },
	{ wch: 48 },
	{ wch: 10 },
	{ wch: 65 },
	{ wch: 12 },
	{ wch: 80 },
];
XLSX.utils.book_append_sheet(wb, lessonWs, "Lesson Manifest");

// ─────────────────────────────────────────────
// Write workbook
// ─────────────────────────────────────────────
const outPath = resolve("market-research/slayer-cpa-market-research.xlsx");
XLSX.writeFile(wb, outPath);
console.log(`Wrote: ${outPath}`);

// Also copy the corrected CSV
copyFileSync(
	resolve("docs/aicpa-far-blueprint-mapping.csv"),
	resolve("market-research/aicpa-far-blueprint-mapping.csv"),
);
console.log("Copied CSV to market-research/");
