import SectionCard from "@/components/section-card";
import { sections } from "@/lib/sections";

export const metadata = {
	title: "Sections — CPA Prep Course",
};

export default function SectionsPage() {
	return (
		<main className="max-w-4xl mx-auto px-4 py-12">
			<h1 className="text-3xl font-bold text-gray-900 mb-2">CPA Sections</h1>
			<p className="text-gray-500 mb-8">
				Choose a section to start studying. Each section includes lessons,
				quizzes, and practice exams.
			</p>
			<div className="grid sm:grid-cols-3 gap-6">
				{sections.map((section) => (
					<SectionCard key={section.code} section={section} />
				))}
			</div>
		</main>
	);
}
