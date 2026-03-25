"use client";

import Link from "next/link";
import { usePathname } from "next/navigation";

const NAV_ITEMS = [
	{ href: "/admin", label: "Hub", icon: "M3 12l2-2m0 0l7-7 7 7M5 10v10a1 1 0 001 1h3m10-11l2 2m-2-2v10a1 1 0 01-1 1h-3m-4 0a1 1 0 01-1-1v-4a1 1 0 011-1h2a1 1 0 011 1v4a1 1 0 01-1 1" },
	{ href: "/admin/review/browse", label: "Browse", icon: "M4 6h16M4 10h16M4 14h16M4 18h16" },
	{ href: "/admin/review", label: "Review", icon: "M9 5H7a2 2 0 00-2 2v12a2 2 0 002 2h10a2 2 0 002-2V7a2 2 0 00-2-2h-2M9 5a2 2 0 002 2h2a2 2 0 002-2M9 5a2 2 0 012-2h2a2 2 0 012 2m-6 9l2 2 4-4" },
	{ href: "/admin/reports", label: "Reports", icon: "M12 9v2m0 4h.01m-6.938 4h13.856c1.54 0 2.502-1.667 1.732-3L13.732 4c-.77-1.333-2.694-1.333-3.464 0L3.34 16c-.77 1.333.192 3 1.732 3z" },
	{ href: "/admin/flags", label: "Flags", icon: "M3 21v-4m0 0V5a2 2 0 012-2h6.5l1 1H21l-3 6 3 6h-8.5l-1-1H5a2 2 0 00-2 2z" },
	{ href: "/admin/users", label: "Users", icon: "M12 4.354a4 4 0 110 5.292M15 21H3v-1a6 6 0 0112 0v1zm0 0h6v-1a6 6 0 00-9-5.197M13 7a4 4 0 11-8 0 4 4 0 018 0z" },
];

export default function AdminSidebar() {
	const pathname = usePathname();

	function isActive(href: string) {
		if (href === "/admin") return pathname === "/admin";
		return pathname.startsWith(href);
	}

	return (
		<aside className="w-56 shrink-0 bg-white border-r border-gray-200 min-h-[calc(100vh-64px)] flex flex-col">
			<div className="px-4 py-5 border-b border-gray-100">
				<p className="text-xs font-bold text-gray-400 uppercase tracking-widest">Admin</p>
			</div>

			<nav className="flex-1 px-3 py-4 space-y-1">
				{NAV_ITEMS.map((item) => {
					const active = isActive(item.href);
					return (
						<Link
							key={item.href}
							href={item.href}
							className={`flex items-center gap-3 px-3 py-2 rounded-lg text-sm transition-colors ${
								active
									? "bg-emerald-50 text-emerald-700 font-medium"
									: "text-gray-600 hover:bg-gray-50 hover:text-gray-900"
							}`}
						>
							<svg
								className="w-4 h-4 shrink-0"
								fill="none"
								viewBox="0 0 24 24"
								stroke="currentColor"
								strokeWidth={1.5}
							>
								<path strokeLinecap="round" strokeLinejoin="round" d={item.icon} />
							</svg>
							{item.label}
						</Link>
					);
				})}
			</nav>

			<div className="px-3 py-4 border-t border-gray-100 space-y-1">
				<button
					type="button"
					onClick={() => {
						document.cookie = "admin_mode=study; path=/; max-age=86400; SameSite=Lax";
						window.location.href = "/dashboard";
					}}
					className="flex items-center gap-3 px-3 py-2 rounded-lg text-sm text-gray-400 hover:text-gray-600 hover:bg-gray-50 transition-colors w-full"
				>
					<svg className="w-4 h-4 shrink-0" fill="none" viewBox="0 0 24 24" stroke="currentColor" strokeWidth={1.5}>
						<path strokeLinecap="round" strokeLinejoin="round" d="M8 7h12m0 0l-4-4m4 4l-4 4m0 6H4m0 0l4 4m-4-4l4-4" />
					</svg>
					Switch to Study Mode
				</button>
			</div>
		</aside>
	);
}
