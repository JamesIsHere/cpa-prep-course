import { renderToBuffer } from "@react-pdf/renderer";
import React, { createElement } from "react";
import { describe, expect, it } from "vitest";
import { getStudyFramework } from "@/lib/study-frameworks";
import { StudyGuidePdf } from "@/lib/study-frameworks/pdf-document";

describe("StudyGuidePdf", () => {
	it("renders a valid PDF buffer for AUD", async () => {
		const framework = getStudyFramework("aud")!;
		const buffer = await renderToBuffer(
			createElement(StudyGuidePdf as unknown as React.FC<{ framework: typeof framework }>, { framework }) as React.ReactElement,
		);
		expect(buffer.byteLength).toBeGreaterThan(0);
		// PDF files start with %PDF-
		const header = new TextDecoder().decode(buffer.slice(0, 5));
		expect(header).toBe("%PDF-");
	}, 30_000);

	it("renders a valid PDF buffer for FAR", async () => {
		const framework = getStudyFramework("far")!;
		const buffer = await renderToBuffer(
			createElement(StudyGuidePdf as unknown as React.FC<{ framework: typeof framework }>, { framework }) as React.ReactElement,
		);
		expect(buffer.byteLength).toBeGreaterThan(0);
		const header = new TextDecoder().decode(buffer.slice(0, 5));
		expect(header).toBe("%PDF-");
	}, 30_000);

	it("renders a valid PDF buffer for REG", async () => {
		const framework = getStudyFramework("reg")!;
		const buffer = await renderToBuffer(
			createElement(StudyGuidePdf as unknown as React.FC<{ framework: typeof framework }>, { framework }) as React.ReactElement,
		);
		expect(buffer.byteLength).toBeGreaterThan(0);
		const header = new TextDecoder().decode(buffer.slice(0, 5));
		expect(header).toBe("%PDF-");
	}, 30_000);

	it("renders a valid PDF buffer for BAR", async () => {
		const framework = getStudyFramework("bar")!;
		const buffer = await renderToBuffer(
			createElement(StudyGuidePdf as unknown as React.FC<{ framework: typeof framework }>, { framework }) as React.ReactElement,
		);
		expect(buffer.byteLength).toBeGreaterThan(0);
		const header = new TextDecoder().decode(buffer.slice(0, 5));
		expect(header).toBe("%PDF-");
	}, 30_000);

	it("renders a valid PDF buffer for ISC", async () => {
		const framework = getStudyFramework("isc")!;
		const buffer = await renderToBuffer(
			createElement(StudyGuidePdf as unknown as React.FC<{ framework: typeof framework }>, { framework }) as React.ReactElement,
		);
		expect(buffer.byteLength).toBeGreaterThan(0);
		const header = new TextDecoder().decode(buffer.slice(0, 5));
		expect(header).toBe("%PDF-");
	}, 30_000);

	it("renders a valid PDF buffer for TCP", async () => {
		const framework = getStudyFramework("tcp")!;
		const buffer = await renderToBuffer(
			createElement(StudyGuidePdf as unknown as React.FC<{ framework: typeof framework }>, { framework }) as React.ReactElement,
		);
		expect(buffer.byteLength).toBeGreaterThan(0);
		const header = new TextDecoder().decode(buffer.slice(0, 5));
		expect(header).toBe("%PDF-");
	}, 30_000);
});
