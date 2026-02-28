import { readdirSync, readFileSync, existsSync, statSync } from "fs";
import { join, resolve, dirname } from "path";
import { fileURLToPath } from "url";

const __dirname = dirname(fileURLToPath(import.meta.url));
const rootDir = resolve(__dirname, "../../");
const contentDir = join(rootDir, "src/content");

interface BrokenLink {
	file: string;
	link: string;
	reason: string;
}

function getAllMdxFiles(dir: string): string[] {
	let results: string[] = [];
	const list = readdirSync(dir);
	for (const file of list) {
		const path = join(dir, file);
		const stat = statSync(path);
		if (stat && stat.isDirectory()) {
			results = results.concat(getAllMdxFiles(path));
		} else if (file.endsWith(".mdx")) {
			results.push(path);
		}
	}
	return results;
}

function checkLinks() {
	console.log("🔍 Scanning MDX files for broken links...");
	const files = getAllMdxFiles(contentDir);
	const brokenLinks: BrokenLink[] = [];
	let totalLinks = 0;

	for (const file of files) {
		const content = readFileSync(file, "utf-8");
		const relativePath = file.replace(rootDir, "");

		// Match Markdown links: [text](url)
		// Specifically looking for internal absolute paths starting with /
		const linkRegex = /\[([^\]]+)\]\(([^)]+)\)/g;
		let match;

		while ((match = linkRegex.exec(content)) !== null) {
			const link = match[2];
			totalLinks++;

			// We only care about internal links starting with /
			if (!link.startsWith("/")) continue;

			// Handle different internal route types
			let targetPath = "";

			if (link.startsWith("/sections/")) {
				// Format: /sections/[slug]/[lesson]
				const parts = link.split("/").filter(Boolean);
				if (parts.length >= 3) {
					const section = parts[1];
					const lesson = parts[2];
					// Map to src/content/[section]/[lesson].mdx
					targetPath = join(contentDir, section, `${lesson}.mdx`);
				} else if (parts.length === 2) {
					// Link to section home: /sections/far
					const section = parts[1];
					targetPath = join(contentDir, section); // Directory check
				}
			} else if (link.startsWith("/blog/")) {
				// Format: /blog/[slug]
				const parts = link.split("/").filter(Boolean);
				const slug = parts[1];
				targetPath = join(contentDir, "blog", `${slug}.mdx`);
			} else {
				// Other internal link (e.g. /dashboard, /account)
				// For now, we only validate content-driven links (sections & blog)
				continue;
			}

			if (targetPath && !existsSync(targetPath)) {
				brokenLinks.push({
					file: relativePath,
					link,
					reason: "Target file not found",
				});
			}
		}
	}

	console.log(`✅ Scanned ${files.length} files and ${totalLinks} links.`);

	if (brokenLinks.length > 0) {
		console.error(`\n❌ Found ${brokenLinks.length} broken links:`);
		brokenLinks.forEach((bl) => {
			console.error(`  - ${bl.file}: ${bl.link} (${bl.reason})`);
		});
		process.exit(1);
	} else {
		console.log("\n✨ No broken links found!");
		process.exit(0);
	}
}

checkLinks();
