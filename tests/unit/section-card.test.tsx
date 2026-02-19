import { cleanup, render, screen } from "@testing-library/react";
import { afterEach, describe, expect, it } from "vitest";
import SectionCard from "@/components/section-card";
import type { Section } from "@/lib/sections";

afterEach(() => cleanup());

const mockSection: Section = {
	code: "aud",
	title: "Auditing and Attestation",
	description: "Test description for AUD section.",
	slug: "aud",
	lessons: [
		{
			slug: "01-intro",
			title: "Intro",
			contentPath: "aud/01-intro",
			isFree: true,
		},
	],
};

describe("SectionCard", () => {
	it("renders the section title", () => {
		render(<SectionCard section={mockSection} />);
		expect(screen.getByText("Auditing and Attestation")).toBeInTheDocument();
	});

	it("renders the section description", () => {
		render(<SectionCard section={mockSection} />);
		expect(
			screen.getByText("Test description for AUD section."),
		).toBeInTheDocument();
	});

	it("shows lesson count", () => {
		render(<SectionCard section={mockSection} />);
		expect(screen.getByText("1 lesson")).toBeInTheDocument();
	});

	it("links to the section detail page", () => {
		render(<SectionCard section={mockSection} />);
		const link = screen.getByRole("link");
		expect(link).toHaveAttribute("href", "/sections/aud");
	});
});
