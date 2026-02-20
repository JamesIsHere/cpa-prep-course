import { ImageResponse } from "next/og";

export const alt = "CPA Prep Course";
export const size = { width: 1200, height: 630 };
export const contentType = "image/png";

export default function OgImage() {
	return new ImageResponse(
		<div
			style={{
				width: "100%",
				height: "100%",
				display: "flex",
				flexDirection: "column",
				alignItems: "center",
				justifyContent: "center",
				backgroundColor: "#047857",
				color: "white",
			}}
		>
			<div
				style={{
					fontSize: "72px",
					fontWeight: 800,
					marginBottom: "16px",
					letterSpacing: "-1px",
				}}
			>
				CPA Prep Course
			</div>
			<div
				style={{
					fontSize: "28px",
					fontWeight: 400,
					opacity: 0.9,
					maxWidth: "700px",
					textAlign: "center",
					lineHeight: 1.4,
				}}
			>
				Lessons, quizzes, practice exams, and study frameworks for the AUD, FAR,
				and REG sections.
			</div>
		</div>,
		{ ...size },
	);
}
