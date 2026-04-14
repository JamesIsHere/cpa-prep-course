// Phase 3 sampler — stratified random sample of 400 questions from the live DB,
// proportional to section size, seeded for reproducibility.
//
// Produces docs/phase3-sample.json with the sample IDs grouped by section.
//
// Sample sizes (400 stratified by section, current bank state 8832):
//   AUD ≈ 66, FAR ≈ 70, REG ≈ 66, BAR ≈ 68, ISC ≈ 66, TCP ≈ 64

import { writeFileSync } from "fs";
import { resolve, dirname } from "path";
import { fileURLToPath } from "url";
import { fetchAllQuestions } from "./db-client.js";

const __dirname = dirname(fileURLToPath(import.meta.url));
const repoRoot = resolve(__dirname, "../..");

const TOTAL_SAMPLE = 400;
const SEED = 20260414; // YYYYMMDD — fixed for reproducibility

// Mulberry32 — small deterministic PRNG seeded by an integer.
function mulberry32(seed: number) {
	return function () {
		let t = (seed += 0x6d2b79f5);
		t = Math.imul(t ^ (t >>> 15), t | 1);
		t ^= t + Math.imul(t ^ (t >>> 7), t | 61);
		return ((t ^ (t >>> 14)) >>> 0) / 4294967296;
	};
}

function shuffleInPlace<T>(arr: T[], rng: () => number): void {
	for (let i = arr.length - 1; i > 0; i--) {
		const j = Math.floor(rng() * (i + 1));
		[arr[i], arr[j]] = [arr[j], arr[i]];
	}
}

async function main() {
	const sections = ["aud", "far", "reg", "bar", "isc", "tcp"] as const;

	// First pass: count per-section to compute proportional allocation.
	const sectionLists: Record<string, number[]> = {};
	let total = 0;
	for (const section of sections) {
		const qs = await fetchAllQuestions(section);
		const ids = qs.map((q) => q.id).sort((a, b) => a - b);
		sectionLists[section] = ids;
		total += ids.length;
	}

	// Allocate sample size per section proportionally.
	const allocations: Record<string, number> = {};
	let allocated = 0;
	for (const section of sections) {
		const n = Math.round((sectionLists[section].length / total) * TOTAL_SAMPLE);
		allocations[section] = n;
		allocated += n;
	}
	// Fix off-by-one from rounding by adjusting the largest section.
	if (allocated !== TOTAL_SAMPLE) {
		const delta = TOTAL_SAMPLE - allocated;
		const biggest = sections.reduce(
			(a, b) => (sectionLists[b].length > sectionLists[a].length ? b : a),
			sections[0],
		);
		allocations[biggest] += delta;
	}

	// Sample per section using seeded RNG.
	const rng = mulberry32(SEED);
	const sample: Record<string, number[]> = {};
	let sampleTotal = 0;
	console.log("");
	console.log(`Phase 3 sample — total target ${TOTAL_SAMPLE}, seed ${SEED}`);
	console.log("");
	console.log("Section | Bank | Sample | %");
	console.log("--------|------|--------|------");
	for (const section of sections) {
		const ids = [...sectionLists[section]];
		shuffleInPlace(ids, rng);
		const picked = ids.slice(0, allocations[section]).sort((a, b) => a - b);
		sample[section] = picked;
		sampleTotal += picked.length;
		const pct = (
			(picked.length / sectionLists[section].length) * 100
		).toFixed(2);
		console.log(
			`${section.toUpperCase().padEnd(7)} | ${String(sectionLists[section].length).padStart(4)} | ${String(picked.length).padStart(6)} | ${pct.padStart(5)}%`,
		);
	}
	console.log("--------|------|--------|------");
	console.log(`TOTAL   | ${String(total).padStart(4)} | ${String(sampleTotal).padStart(6)} |`);
	console.log("");

	const outPath = resolve(repoRoot, "docs/phase3-sample.json");
	writeFileSync(
		outPath,
		JSON.stringify(
			{
				generatedAt: new Date().toISOString(),
				seed: SEED,
				totalSample: sampleTotal,
				bankSizeAtSampling: total,
				sections: sample,
			},
			null,
			2,
		),
	);
	console.log(`→ ${outPath}`);
}

main().catch((e) => {
	console.error(e);
	process.exit(1);
});
