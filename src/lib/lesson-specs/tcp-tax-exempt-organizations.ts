import type { LessonSpec } from "./types";

// TCP/II/E — "Tax-exempt organizations."
//
// No direct DB topic match — questions are distributed across TCP topics.
// AICPA topics: TCP/II/E/1 (obtaining and maintaining tax-exempt status)
// and TCP/II/E/2 (unrelated business income).
//
// This is a lighter-weight group in TCP with 3 task-specs total.

export const spec: LessonSpec = {
	topic: "Tax-Exempt Organizations",
	section: "tcp",
	primaryRef: "TCP/II/E",
	secondaryRefs: [],

	inScope: [
		"Section 501(c)(3) qualification — organizational test (articles of incorporation must limit purposes to exempt purposes), operational test (primary activities must further exempt purposes), prohibition on private inurement and private benefit",
		"Application for tax-exempt status — Form 1023 (full application for §501(c)(3)), Form 1023-EZ (streamlined for small organizations), IRS determination letter, effective date of exemption",
		"Types of exempt organizations at concept level — §501(c)(3) charitable/educational/religious, §501(c)(4) social welfare, §501(c)(6) business leagues, §501(c)(7) social clubs; key differences in deductibility of contributions and political activity restrictions",
		"Maintaining exempt status — annual filing requirements (Form 990, 990-EZ, 990-N), automatic revocation for failure to file for three consecutive years, prohibitions that can trigger revocation (substantial lobbying, political campaign intervention for §501(c)(3))",
		"Private foundation vs. public charity distinction — §509(a) definition, public support tests (1/3 support test, facts and circumstances test at concept level), excise taxes on private foundations (§4940 net investment income tax, §4941 self-dealing, §4942 failure to distribute, §4943 excess business holdings, §4944 jeopardizing investments) at concept level",
		"Unrelated business income (UBI) — definition under §512 (regularly carried on trade or business not substantially related to exempt purpose), computation of unrelated business taxable income (UBTI)",
		"UBI exclusions and modifications — exclusions for passive income (dividends, interest, royalties, rents from real property), volunteer-operated activities, activities for the convenience of members (§501(c)(3) only), donated goods sales",
		"Debt-financed income under §514 — income from debt-financed property included in UBI proportionate to the debt/basis ratio, at concept level",
		"UBI reporting — Form 990-T filing requirement when gross UBI exceeds $1,000, estimated tax payments for exempt organizations with UBI",
		"Intermediate sanctions under §4958 — excess benefit transactions between disqualified persons and §501(c)(3)/(c)(4) organizations, excise taxes on disqualified persons at concept level",
	],

	outOfScope: [
		"Detailed private foundation excise tax computations — penalty tier calculations, abatement procedures, correction requirements at mechanics depth",
		"State-level tax exemption applications and state charity registration requirements",
		"Church exemption rules and the church audit limitation under §7611 at depth",
		"Political organization taxation under §527 at depth",
		"Donor-advised fund rules under §4966–§4967 at depth",
		"Supporting organization rules under §509(a)(3) at detailed classification level",
		"Fiscal sponsorship arrangements and pass-through grant mechanics",
		"Nonprofit governance best practices and board fiduciary duties (non-tax topic)",
		"Tax-exempt bond rules for §501(c)(3) organizations under §145",
		"Unrelated debt-financed income computation at detailed mechanics level (allocation formulas, average acquisition indebtedness)",
	],

	keyStandards: [
		"IRC §501(c)(3) — Exempt organizations (charitable, educational, religious)",
		"IRC §501(c)(4)–(c)(7) — Other exempt organization types (concept level)",
		"IRC §509(a) — Private foundation definition",
		"IRC §511–§514 — Unrelated business income tax",
		"IRC §4940–§4945 — Private foundation excise taxes (concept level)",
		"IRC §4958 — Intermediate sanctions / excess benefit transactions",
		"Form 990 — Return of Organization Exempt From Income Tax",
		"Form 990-T — Exempt Organization Business Income Tax Return",
		"Form 1023 — Application for Recognition of Exemption",
	],

	commonMisconceptions: [
		"Believing all income of a tax-exempt organization is tax-free. Exempt organizations pay tax on unrelated business income (UBI) — income from a regularly carried on trade or business not substantially related to the exempt purpose.",
		"Confusing the organizational test with the operational test. The organizational test looks at the governing documents (articles must limit purposes); the operational test looks at actual activities (must primarily further exempt purposes). Both must be met.",
		"Believing passive investment income (dividends, interest, rents from real property) is UBI. These items are specifically excluded from UBI under §512(b) — the exclusions for passive income are a key testing point.",
		"Treating all rental income as excluded from UBI. Rents from real property are excluded, but rents from personal property are NOT excluded unless incidental to a real property rental. Debt-financed rental income may also be partially included.",
		"Believing §501(c)(4) organizations can receive tax-deductible contributions like §501(c)(3) organizations. Contributions to §501(c)(4) social welfare organizations are NOT deductible as charitable contributions (though they may be deductible as business expenses in limited cases).",
		"Believing private foundations and public charities are taxed identically. Private foundations face excise taxes on net investment income, self-dealing, failure to distribute minimum amounts, excess business holdings, and jeopardizing investments — restrictions that do not apply to public charities.",
	],

	representativeDifficulty: "medium",

	notes:
		"TCP/II/E is a smaller group (3 task-specs) but covers both the formation/maintenance side (II/E/1) and the UBI computation side (II/E/2). The UBI exclusions for passive income are heavily tested. Questions should emphasize the distinction between related and unrelated activities and the specific statutory exclusions.",
};
