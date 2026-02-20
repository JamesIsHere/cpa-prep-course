import { Analytics } from "@vercel/analytics/next";
import type { Metadata } from "next";
import { Geist, Geist_Mono } from "next/font/google";
import Nav from "@/components/nav";
import "./globals.css";

const geistSans = Geist({
	variable: "--font-geist-sans",
	subsets: ["latin"],
});

const geistMono = Geist_Mono({
	variable: "--font-geist-mono",
	subsets: ["latin"],
});

export const metadata: Metadata = {
	title: {
		default: "Slayer CPA",
		template: "%s — Slayer CPA",
	},
	description:
		"Full-scope CPA exam prep — 94 lessons, 1,250+ practice questions, timed exams, and study frameworks across all 6 sections for $9.99/month.",
	metadataBase: new URL("https://www.slayer-cpa.com"),
	openGraph: {
		type: "website",
		siteName: "Slayer CPA",
		title: "Slayer CPA",
		description:
			"94 lessons, 1,250+ questions, timed practice exams, and PDF study frameworks covering AUD, FAR, REG, BAR, ISC, and TCP.",
	},
	twitter: {
		card: "summary_large_image",
		title: "Slayer CPA",
		description:
			"94 lessons, 1,250+ questions, timed practice exams, and PDF study frameworks covering AUD, FAR, REG, BAR, ISC, and TCP.",
	},
};

export default function RootLayout({
	children,
}: Readonly<{
	children: React.ReactNode;
}>) {
	return (
		<html lang="en">
			<body
				className={`${geistSans.variable} ${geistMono.variable} antialiased bg-gray-50`}
			>
				<Nav />
				{children}
				<Analytics />
			</body>
		</html>
	);
}
