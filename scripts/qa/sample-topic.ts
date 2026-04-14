// One-off helper: sample N question stems from a given (section, topic) pair.
// Usage: npx tsx scripts/qa/sample-topic.ts --topic="Foreign Currency Transactions" --section=bar [--n=12]
import { fetchAllQuestions } from "./db-client";

function arg(name: string): string | undefined {
	return process.argv.find((a) => a.startsWith(`--${name}=`))?.split("=").slice(1).join("=");
}

async function main() {
	const topic = arg("topic");
	const section = arg("section");
	const n = parseInt(arg("n") ?? "12", 10);
	if (!topic || !section) {
		console.error("Usage: --topic=\"...\" --section=<code> [--n=12]");
		process.exit(2);
	}
	const all = await fetchAllQuestions(section);
	const filtered = all.filter((q) => q.topic === topic);
	console.error(`Found ${filtered.length}; showing ${Math.min(n, filtered.length)}`);
	for (const q of filtered.slice(0, n)) {
		console.log(`Q${q.id} [${q.difficulty}] ${q.stem.slice(0, 220)}`);
	}
}
main();
