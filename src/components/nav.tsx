"use client";

import type { User } from "@supabase/supabase-js";
import Link from "next/link";
import { useRouter } from "next/navigation";
import { useEffect, useState } from "react";
import { createClient } from "@/lib/supabase/client";

export default function Nav() {
	const router = useRouter();
	const [open, setOpen] = useState(false);
	const [user, setUser] = useState<User | null>(null);

	useEffect(() => {
		const supabase = createClient();
		supabase.auth.getUser().then(({ data }) => setUser(data.user));

		const {
			data: { subscription },
		} = supabase.auth.onAuthStateChange((_event, session) => {
			setUser(session?.user ?? null);
		});

		return () => subscription.unsubscribe();
	}, []);

	async function handleLogout() {
		const supabase = createClient();
		await supabase.auth.signOut();
		setUser(null);
		router.push("/");
		router.refresh();
	}

	return (
		<nav className="bg-white border-b border-gray-200 sticky top-0 z-50">
			<div className="max-w-6xl mx-auto px-4 sm:px-6 lg:px-8">
				<div className="flex justify-between h-16 items-center">
					<Link href="/" className="text-xl font-bold text-emerald-700">
						Slayer CPA
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
							href="/blog"
							className="text-gray-600 hover:text-emerald-700 transition-colors"
						>
							Blog
						</Link>
						{user ? (
							<>
								<Link
									href="/exam"
									className="text-gray-600 hover:text-emerald-700 transition-colors"
								>
									Practice Hub
								</Link>
								<Link
									href="/dashboard"
									className="text-gray-600 hover:text-emerald-700 transition-colors"
								>
									Dashboard
								</Link>
								<Link
									href="/account"
									className="text-gray-600 hover:text-emerald-700 transition-colors"
								>
									Account
								</Link>
								<button
									type="button"
									onClick={handleLogout}
									className="text-gray-500 hover:text-gray-700 transition-colors text-sm"
								>
									Log out
								</button>
							</>
						) : (
							<Link
								href="/login"
								className="bg-emerald-600 text-white px-4 py-2 rounded-lg hover:bg-emerald-700 transition-colors"
							>
								Log In
							</Link>
						)}
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
							href="/blog"
							className="block text-gray-600 hover:text-emerald-700 py-2"
							onClick={() => setOpen(false)}
						>
							Blog
						</Link>
						{user ? (
							<>
								<Link
									href="/exam"
									className="block text-gray-600 hover:text-emerald-700 py-2"
									onClick={() => setOpen(false)}
								>
									Practice Hub
								</Link>
								<Link
									href="/dashboard"
									className="block text-gray-600 hover:text-emerald-700 py-2"
									onClick={() => setOpen(false)}
								>
									Dashboard
								</Link>
								<Link
									href="/account"
									className="block text-gray-600 hover:text-emerald-700 py-2"
									onClick={() => setOpen(false)}
								>
									Account
								</Link>
								<button
									type="button"
									onClick={() => {
										setOpen(false);
										handleLogout();
									}}
									className="block w-full text-left text-gray-500 hover:text-gray-700 py-2 text-sm"
								>
									Log out
								</button>
							</>
						) : (
							<Link
								href="/login"
								className="block bg-emerald-600 text-white px-4 py-2 rounded-lg text-center hover:bg-emerald-700"
								onClick={() => setOpen(false)}
							>
								Log In
							</Link>
						)}
					</div>
				</div>
			)}
		</nav>
	);
}
