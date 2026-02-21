import SectionCard from "@/components/section-card";
import { StudyPipeline } from "@/components/study-pipeline";
import { sections } from "@/lib/sections";

export const metadata = {
	title: "Sections",
};

export default function SectionsPage() {
	return (
		<main className="max-w-4xl mx-auto px-4 py-12">
			<h1 className="text-3xl font-bold text-gray-900 mb-2">CPA Sections</h1>
			<p className="text-gray-500 mb-8">
				Choose a section and start studying, for $29.99 you have access to all
				materials we offer.
			</p>

			<div className="mb-10 bg-gray-50 rounded-xl border border-gray-200 p-6">
				<p className="text-sm font-semibold text-gray-700 mb-4 text-center">
					The study pipeline — every topic, same 4 steps
				</p>
				<StudyPipeline variant="full" />
			</div>

			<div className="grid sm:grid-cols-3 gap-6">
				{sections.map((section) => (
					<SectionCard key={section.code} section={section} />
				))}
			</div>
		</main>
	);
}
