import { renderToBuffer } from "@react-pdf/renderer";
import { createElement } from "react";
import { describe, expect, it } from "vitest";
import { getStudyFramework } from "@/lib/study-frameworks";
import { StudyGuidePdf } from "@/lib/study-frameworks/pdf-document";

describe("StudyGuidePdf", () => {
	it("renders a valid PDF buffer for AUD", async () => {
		const framework = getStudyFramework("aud")!;
		const buffer = await renderToBuffer(
			createElement(StudyGuidePdf, { framework }),
		);
		expect(buffer.byteLength).toBeGreaterThan(0);
		// PDF files start with %PDF-
		const header = new TextDecoder().decode(buffer.slice(0, 5));
		expect(header).toBe("%PDF-");
	}, 30_000);
});
