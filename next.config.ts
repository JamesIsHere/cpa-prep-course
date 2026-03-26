import createMDX from "@next/mdx";
import type { NextConfig } from "next";

const nextConfig: NextConfig = {
	pageExtensions: ["js", "jsx", "md", "mdx", "ts", "tsx"],
	serverExternalPackages: ["@react-pdf/renderer"],
	async redirects() {
		// FAR lesson slug redirects (18→23 restructure to match AICPA blueprint)
		const farRedirects = [
			["02-financial-statements", "02-financial-statement-presentation"],
			["03-revenue-recognition", "08-revenue-recognition"],
			["04-inventory", "09-inventory"],
			["05-fixed-assets", "10-fixed-assets"],
			["06-intangible-assets", "11-intangible-assets"],
			["07-leases", "13-leases"],
			["08-bonds-and-debt", "14-bonds-and-debt"],
			["09-equity", "15-equity"],
			["10-income-taxes", "18-income-taxes"],
			["11-governmental-accounting", "22-governmental-accounting-fundamentals"],
			["12-not-for-profit", "21-not-for-profit"],
			["13-consolidations", "19-consolidations"],
			["14-cash-and-receivables", "07-cash-and-receivables"],
			["15-employee-benefit-plans", "05-employee-benefit-plans"],
			["16-special-purpose-frameworks", "06-special-purpose-frameworks"],
			["18-fair-value", "20-fair-value"],
		] as const;

		return farRedirects.map(([from, to]) => ({
			source: `/sections/far/lessons/${from}`,
			destination: `/sections/far/lessons/${to}`,
			permanent: true,
		}));
	},
	async headers() {
		return [
			{
				source: "/:path*",
				headers: [
					{
						key: "X-Content-Type-Options",
						value: "nosniff",
					},
					{
						key: "Referrer-Policy",
						value: "strict-origin-when-cross-origin",
					},
					{
						key: "X-Frame-Options",
						value: "DENY",
					},
					{
						key: "Strict-Transport-Security",
						value: "max-age=63072000; includeSubDomains; preload",
					},
					{
						key: "X-XSS-Protection",
						value: "1; mode=block",
					},
					{
						key: "Permissions-Policy",
						value: "camera=(), microphone=(), geolocation=()",
					},
					{
						key: "Content-Security-Policy",
						value: "default-src 'self'; script-src 'self' 'unsafe-inline' 'unsafe-eval' https://js.stripe.com https://va.vercel-scripts.com; style-src 'self' 'unsafe-inline'; img-src 'self' data: https:; font-src 'self' data:; connect-src 'self' https://*.supabase.co https://api.stripe.com https://va.vercel-scripts.com; frame-src https://js.stripe.com; object-src 'none'; base-uri 'self'",
					},
				],
			},
		];
	},
};

const withMDX = createMDX({
	options: {
		remarkPlugins: ["remark-gfm"],
		rehypePlugins: [],
	},
});

export default withMDX(nextConfig);
