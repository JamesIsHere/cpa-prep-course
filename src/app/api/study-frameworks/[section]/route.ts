import { NextResponse } from "next/server";
import { createElement } from "react";
import { getStudyFramework } from "@/lib/study-frameworks";
import { StudyGuidePdf } from "@/lib/study-frameworks/pdf-document";
import { createClient } from "@/lib/supabase/server";

export async function GET(
	_request: Request,
	{ params }: { params: Promise<{ section: string }> },
) {
	const { section } = await params;

	const framework = getStudyFramework(section);
	if (!framework) {
		return NextResponse.json({ error: "Section not found" }, { status: 404 });
	}

	const supabase = await createClient();
	const {
		data: { user },
	} = await supabase.auth.getUser();

	if (!user) {
		return NextResponse.json({ error: "Unauthorized" }, { status: 401 });
	}

	const { data: profile } = await supabase
		.from("profiles")
		.select("subscription_status")
		.eq("id", user.id)
		.single();

	if (profile?.subscription_status !== "active") {
		return NextResponse.json(
			{ error: "Active subscription required" },
			{ status: 403 },
		);
	}

	const { renderToBuffer } = await import("@react-pdf/renderer");
	// eslint-disable-next-line @typescript-eslint/no-explicit-any
	const element = createElement(StudyGuidePdf, { framework }) as any;
	const buffer = await renderToBuffer(element);

	return new NextResponse(new Uint8Array(buffer), {
		headers: {
			"Content-Type": "application/pdf",
			"Content-Disposition": `attachment; filename="${section}-study-framework.pdf"`,
		},
	});
}
