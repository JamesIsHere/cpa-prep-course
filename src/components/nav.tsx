"use client";

import Link from "next/link";
import { useState } from "react";

export default function Nav() {
	const [open, setOpen] = useState(false);

	return (
		<nav className="bg-white border-b border-gray-200 sticky top-0 z-50">
			<div className="max-w-6xl mx-auto px-4 sm:px-6 lg:px-8">
				<div className="flex justify-between h-16 items-center">
					<Link href="/" className="text-xl font-bold text-emerald-700">
						CPA Prep Course
					</Link>

					{/* Desktop links */}
					<div className="hidden sm:flex items-center gap-6">
						<Link
							href="/sections"
							className="text-gray-600 hover:text-emerald-700 transition-colors"
						>
							Sections
						</Link>
						<Link
							href="/sections"
							className="bg-emerald-600 text-white px-4 py-2 rounded-lg hover:bg-emerald-700 transition-colors"
						>
							Get Started
						</Link>
					</div>

					{/* Mobile menu button */}
					<button
						type="button"
						className="sm:hidden p-2 text-gray-600"
						onClick={() => setOpen(!open)}
						aria-label="Toggle menu"
					>
						<svg
							className="w-6 h-6"
							fill="none"
							stroke="currentColor"
							viewBox="0 0 24 24"
						>
							{open ? (
								<path
									strokeLinecap="round"
									strokeLinejoin="round"
									strokeWidth={2}
									d="M6 18L18 6M6 6l12 12"
								/>
							) : (
								<path
									strokeLinecap="round"
									strokeLinejoin="round"
									strokeWidth={2}
									d="M4 6h16M4 12h16M4 18h16"
								/>
							)}
						</svg>
					</button>
				</div>
			</div>

			{/* Mobile menu */}
			{open && (
				<div className="sm:hidden border-t border-gray-200 bg-white">
					<div className="px-4 py-3 space-y-2">
						<Link
							href="/sections"
							className="block text-gray-600 hover:text-emerald-700 py-2"
							onClick={() => setOpen(false)}
						>
							Sections
						</Link>
						<Link
							href="/sections"
							className="block bg-emerald-600 text-white px-4 py-2 rounded-lg text-center hover:bg-emerald-700"
							onClick={() => setOpen(false)}
						>
							Get Started
						</Link>
					</div>
				</div>
			)}
		</nav>
	);
}
