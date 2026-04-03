interface WaterfallRow {
	label: string;
	rate: string;
	amount?: string;
	type?: "start" | "adjust" | "result";
}

function rowStyles(type: WaterfallRow["type"]) {
	switch (type) {
		case "start":
			return { bg: "bg-indigo-50", text: "text-gray-900 font-semibold", rate: "text-gray-900 font-semibold" };
		case "result":
			return { bg: "bg-indigo-50", text: "text-gray-900 font-semibold", rate: "text-gray-900 font-semibold" };
		default:
			return { bg: "bg-white", text: "text-gray-700", rate: "text-gray-700" };
	}
}

export default function RateWaterfall({ items, preTaxIncome }: { items: WaterfallRow[]; preTaxIncome?: string }) {
	const hasAmounts = items.some((r) => r.amount);
	return (
		<div className="my-6 overflow-x-auto">
			{preTaxIncome && (
				<p className="text-xs text-gray-500 mb-2">Assume pre-tax book income of {preTaxIncome}</p>
			)}
			<table className="w-full text-sm">
				<thead>
					<tr className="border-b-2 border-gray-200">
						<th className="text-left py-2 pr-4 text-gray-500 font-medium">Item</th>
						<th className="text-right py-2 px-4 text-gray-500 font-medium w-24">Rate</th>
						{hasAmounts && (
							<th className="text-right py-2 pl-4 text-gray-500 font-medium w-32">Amount</th>
						)}
					</tr>
				</thead>
				<tbody>
					{items.map((row, i) => {
						const s = rowStyles(row.type);
						const isResult = row.type === "result";
						return (
							<tr
								key={i}
								className={`${s.bg} ${isResult ? "border-t-2 border-gray-300" : "border-t border-gray-100"}`}
							>
								<td className={`py-2 pr-4 ${s.text}`}>{row.label}</td>
								<td className={`py-2 px-4 text-right font-mono ${s.rate}`}>{row.rate}</td>
								{hasAmounts && (
									<td className={`py-2 pl-4 text-right font-mono ${s.rate}`}>{row.amount ?? ""}</td>
								)}
							</tr>
						);
					})}
				</tbody>
			</table>
		</div>
	);
}
