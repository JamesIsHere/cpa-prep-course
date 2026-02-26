// Generate static PDF study guides for all sections
// Usage: npx tsx scripts/generate-pdf-guides.ts

import { renderToBuffer } from "@react-pdf/renderer";
import { createElement } from "react";
import { writeFileSync, mkdirSync, existsSync } from "fs";
import { resolve } from "path";
import { getStudyFramework } from "../src/lib/study-frameworks";
import { StudyGuidePdf } from "../src/lib/study-frameworks/pdf-document";

const sections = ["aud", "far", "reg", "bar", "isc", "tcp"];
const outputDir = resolve(process.cwd(), "public/guides");

async function main() {
	if (!existsSync(outputDir)) {
		mkdirSync(outputDir, { recursive: true });
	}

	console.log(`Starting PDF generation for ${sections.length} sections...`);

	for (const section of sections) {
		const framework = getStudyFramework(section);
		if (!framework) {
			console.error(`Framework not found for section: ${section}`);
			continue;
		}

		console.log(`Generating PDF for ${section.toUpperCase()}...`);
		try {
			// @ts-ignore - StudyGuidePdf props mismatch in some environments
			const element = createElement(StudyGuidePdf, { framework });
			const buffer = await renderToBuffer(element);
			
			const fileName = `${section}-study-guide.pdf`;
			const filePath = resolve(outputDir, fileName);
			
			writeFileSync(filePath, Buffer.from(buffer));
			console.log(`  Successfully saved to public/guides/${fileName} (${(buffer.byteLength / 1024).toFixed(1)} KB)`);
		} catch (error) {
			console.error(`  Failed to generate PDF for ${section}:`, error);
		}
	}

	console.log("PDF generation complete.");
}

main();
