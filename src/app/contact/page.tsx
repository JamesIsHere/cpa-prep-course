import type { Metadata } from "next";
import ContactForm from "./contact-form";

export const metadata: Metadata = {
	title: "Contact",
};

export default function ContactPage() {
	return (
		<main className="max-w-xl mx-auto px-4 py-16">
			<h1 className="text-2xl font-bold text-gray-900 text-center mb-2">
				Contact us
			</h1>
			<p className="text-gray-500 text-center mb-8">
				Have a question, found an error, or want to suggest an improvement?
				We&apos;d love to hear from you.
			</p>
			<ContactForm />
		</main>
	);
}
