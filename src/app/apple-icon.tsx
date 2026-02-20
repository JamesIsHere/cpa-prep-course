import { ImageResponse } from "next/og";

export const size = { width: 180, height: 180 };
export const contentType = "image/png";

export default function AppleIcon() {
	return new ImageResponse(
		<div
			style={{
				width: "100%",
				height: "100%",
				display: "flex",
				alignItems: "center",
				justifyContent: "center",
				backgroundColor: "#047857",
				borderRadius: "36px",
				color: "white",
				fontSize: "72px",
				fontWeight: 800,
				letterSpacing: "-2px",
			}}
		>
			CPA
		</div>,
		{ ...size },
	);
}
