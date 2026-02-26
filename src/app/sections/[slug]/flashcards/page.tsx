import Link from "next/link";
import { notFound } from "next/navigation";
import FlashcardDeck from "@/components/flashcard-deck";
import Paywall from "@/components/paywall";
import { getSection, sections } from "@/lib/sections";
import { getStudyFramework } from "@/lib/study-frameworks";
import { createClient } from "@/lib/supabase/server";

export function generateStaticParams() {
	return sections.map((s) => ({ slug: s.slug }));
}

export default async function FlashcardsPage({
	params,
}: {
	params: Promise<{ slug: string }>;
}) {
	const { slug } = await params;
	const section = getSection(slug);
	if (!section) notFound();

	// Auth + subscription check
	const supabase = await createClient();
	const {
		data: { user },
	} = await supabase.auth.getUser();

	if (!user) {
		return (
			<main className="max-w-4xl mx-auto px-4 py-12">
				<h1 className="text-3xl font-bold text-gray-900 mb-6">{section.title} Flashcards</h1>
				<Paywall />
			</main>
		);
	}

	const { data: profile } = await supabase
		.from("profiles")
		.select("subscription_status")
		.eq("id", user.id)
		.single();

	if (profile?.subscription_status !== "active") {
		return (
			<main className="max-w-4xl mx-auto px-4 py-12">
				<h1 className="text-3xl font-bold text-gray-900 mb-6">{section.title} Flashcards</h1>
				<Paywall />
			</main>
		);
	}

	const framework = getStudyFramework(section.code);
	if (!framework) notFound();

	// Convert mnemonics and formulas to flashcard format
	const cards = [
		...framework.mnemonics.map((m) => ({
			id: `m-${m.acronym}`,
			type: "Mnemonic",
			front: m.acronym,
			back: (
				<div className="space-y-4">
					<p className="text-xl font-bold border-b border-emerald-400 pb-2">{m.expansion}</p>
					<p className="text-sm opacity-90">{m.explanation}</p>
				</div>
			),
		})),
		...framework.formulas.map((f) => ({
			id: `f-${f.name}`,
			type: "Formula",
			front: f.name,
			back: (
				<div className="space-y-4">
					<p className="text-2xl font-mono font-bold tracking-tight bg-emerald-700/50 p-3 rounded-lg border border-emerald-400">
						{f.formula}
					</p>
					{f.description && <p className="text-sm opacity-90">{f.description}</p>}
				</div>
			),
		})),
	];

	if (cards.length === 0) {
		return (
			<main className="max-w-4xl mx-auto px-4 py-12">
				<Link href={`/sections/${slug}`} className="text-sm text-emerald-600 hover:text-emerald-700 mb-6 inline-block">&larr; Back to {section.title}</Link>
				<h1 className="text-3xl font-bold text-gray-900 mb-4">Flashcards</h1>
				<div className="bg-gray-50 rounded-2xl border-2 border-dashed border-gray-200 p-12 text-center text-gray-500">
					No flashcards available for this section yet.
				</div>
			</main>
		);
	}

	return (
		<main className="max-w-4xl mx-auto px-4 py-12">
			<Link href={`/sections/${slug}`} className="text-sm text-emerald-600 hover:text-emerald-700 mb-6 inline-block">&larr; Back to {section.title}</Link>
			
			<div className="text-center mb-12">
				<h1 className="text-3xl font-bold text-gray-900 mb-2">{section.title} Review</h1>
				<p className="text-gray-500 italic font-medium tracking-tight">Rapid-fire review of mnemonics and formulas</p>
			</div>

			<FlashcardDeck cards={cards} />
		</main>
	);
}
