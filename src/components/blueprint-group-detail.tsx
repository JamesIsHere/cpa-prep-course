"use client";

import Link from "next/link";
import BlueprintProgressBar from "@/components/blueprint-progress-bar";
import {
	ConceptMapPreview,
	DecisionTreePreview,
	FormulaPreview,
	MnemonicPreview,
	ReferenceTablePreview,
} from "@/components/framework-preview";
import type { BlueprintGroup } from "@/lib/blueprint";
import type { GroupFrameworkItems } from "@/lib/blueprint-utils";
import type { Lesson } from "@/lib/sections";

interface GroupProgress {
	attempted: number;
	correct: number;
	total: number;
}

interface BlueprintGroupDetailProps {
	sectionSlug: string;
	sectionTitle: string;
	areaNumber: number;
	areaName: string;
	group: BlueprintGroup;
	groupSlug: string;
	lessons: Lesson[];
	frameworkItems: GroupFrameworkItems;
	questionCount: number;
	progress: GroupProgress;
}

export default function BlueprintGroupDetail({
	sectionSlug,
	sectionTitle,
	areaNumber,
	areaName,
	group,
	groupSlug,
	lessons,
	frameworkItems,
	questionCount,
	progress,
}: BlueprintGroupDetailProps) {
	const hasFrameworks =
		frameworkItems.conceptMaps.length > 0 ||
		frameworkItems.decisionTrees.length > 0 ||
		frameworkItems.formulas.length > 0 ||
		frameworkItems.referenceTables.length > 0 ||
		frameworkItems.mnemonics.length > 0;

	return (
		<div className="space-y-8">
			{/* Progress summary */}
			{questionCount > 0 && (
				<div className="border border-gray-200 rounded-xl p-4 sm:p-5">
					<h2 className="text-sm font-semibold text-gray-700 mb-3">
						Your Progress
					</h2>
					<BlueprintProgressBar
						attempted={progress.attempted}
						correct={progress.correct}
						total={progress.total}
					/>
					<p className="text-xs text-gray-400 mt-2">
						{progress.attempted} of {progress.total} questions attempted
					</p>
				</div>
			)}

			{/* Topics */}
			<div>
				<h2 className="text-lg font-semibold text-gray-800 mb-3">Topics</h2>
				<ul className="space-y-1">
					{group.topics.map((topic) => (
						<li
							key={topic.id}
							className="flex items-center gap-2 text-sm text-gray-600"
						>
							<span className="w-1.5 h-1.5 bg-emerald-400 rounded-full shrink-0" />
							{topic.name}
						</li>
					))}
				</ul>
			</div>

			{/* Linked lessons */}
			{lessons.length > 0 && (
				<div>
					<h2 className="text-lg font-semibold text-gray-800 mb-3">Lessons</h2>
					<ul className="space-y-2">
						{lessons.map((lesson) => (
							<li key={lesson.slug}>
								<Link
									href={`/sections/${sectionSlug}/lessons/${lesson.slug}`}
									className="flex items-center gap-3 border border-gray-200 rounded-lg p-3 sm:p-4 hover:border-emerald-500 hover:shadow-sm transition-all group"
								>
									<span className="text-gray-900 group-hover:text-emerald-700 transition-colors text-sm">
										{lesson.title}
									</span>
									{lesson.isFree && (
										<span className="ml-auto text-xs bg-emerald-100 text-emerald-700 px-2 py-0.5 rounded-full">
											Free
										</span>
									)}
								</Link>
							</li>
						))}
					</ul>
				</div>
			)}

			{/* Study frameworks */}
			{hasFrameworks && (
				<div>
					<h2 className="text-lg font-semibold text-gray-800 mb-3">
						Study Frameworks
					</h2>
					<div className="space-y-3">
						{frameworkItems.conceptMaps.map((item) => (
							<ConceptMapPreview key={item.title} item={item} />
						))}
						{frameworkItems.decisionTrees.map((item) => (
							<DecisionTreePreview key={item.title} item={item} />
						))}
						{frameworkItems.formulas.map((item) => (
							<FormulaPreview key={item.name} item={item} />
						))}
						{frameworkItems.referenceTables.map((item) => (
							<ReferenceTablePreview key={item.title} item={item} />
						))}
						{frameworkItems.mnemonics.map((item) => (
							<MnemonicPreview key={item.acronym} item={item} />
						))}
					</div>
				</div>
			)}

			{/* Practice button */}
			{questionCount > 0 ? (
				<Link
					href={`/sections/${sectionSlug}/blueprint/${groupSlug}/quiz`}
					className="inline-flex items-center gap-2 bg-emerald-600 text-white px-6 py-3 rounded-lg font-medium hover:bg-emerald-700 transition-colors"
				>
					Practice These Topics
					<span className="text-emerald-200 text-sm">
						({questionCount} questions)
					</span>
				</Link>
			) : (
				<p className="text-sm text-gray-400 italic">
					No practice questions for this group yet
				</p>
			)}
		</div>
	);
}
