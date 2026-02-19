import { createClient } from "@supabase/supabase-js";
import { headers } from "next/headers";
import { NextResponse } from "next/server";
import { getStripe } from "@/lib/stripe";

// Use service role client for webhook — bypasses RLS
function createServiceClient() {
	return createClient(
		process.env.NEXT_PUBLIC_SUPABASE_URL!,
		process.env.SUPABASE_SERVICE_ROLE_KEY!,
	);
}

export async function POST(request: Request) {
	const body = await request.text();
	const headersList = await headers();
	const signature = headersList.get("stripe-signature")!;

	let event;
	try {
		event = getStripe().webhooks.constructEvent(
			body,
			signature,
			process.env.STRIPE_WEBHOOK_SECRET!,
		);
	} catch {
		return NextResponse.json({ error: "Invalid signature" }, { status: 400 });
	}

	const supabase = createServiceClient();

	switch (event.type) {
		case "customer.subscription.created":
		case "customer.subscription.updated": {
			const subscription = event.data.object;
			const customerId =
				typeof subscription.customer === "string"
					? subscription.customer
					: subscription.customer.id;
			const status = subscription.status === "active" ? "active" : "canceled";

			await supabase
				.from("profiles")
				.update({ subscription_status: status })
				.eq("stripe_customer_id", customerId);
			break;
		}

		case "customer.subscription.deleted": {
			const subscription = event.data.object;
			const customerId =
				typeof subscription.customer === "string"
					? subscription.customer
					: subscription.customer.id;

			await supabase
				.from("profiles")
				.update({ subscription_status: "canceled" })
				.eq("stripe_customer_id", customerId);
			break;
		}
	}

	return NextResponse.json({ received: true });
}
