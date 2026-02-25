"use client";

import {
	CartesianGrid,
	Line,
	LineChart,
	ReferenceLine,
	ResponsiveContainer,
	Tooltip,
	XAxis,
	YAxis,
} from "recharts";

interface TrendPoint {
	date: string;
	score: number;
	type: "quiz" | "exam";
}

export default function ScoreTrendChart({ data }: { data: TrendPoint[] }) {
	if (data.length < 2) {
		return (
			<p className="text-sm text-gray-400 py-8 text-center">
				Complete at least 2 quizzes to see your score trend.
			</p>
		);
	}

	const formatted = data.map((d) => ({
		...d,
		label: new Date(d.date).toLocaleDateString("en-US", {
			month: "short",
			day: "numeric",
		}),
	}));

	return (
		<ResponsiveContainer width="100%" height={240}>
			<LineChart data={formatted} margin={{ top: 8, right: 8, bottom: 0, left: -16 }}>
				<CartesianGrid strokeDasharray="3 3" stroke="#f0f0f0" />
				<XAxis
					dataKey="label"
					tick={{ fontSize: 12, fill: "#9ca3af" }}
					tickLine={false}
					axisLine={false}
				/>
				<YAxis
					domain={[0, 100]}
					tick={{ fontSize: 12, fill: "#9ca3af" }}
					tickLine={false}
					axisLine={false}
					tickFormatter={(v) => `${v}%`}
				/>
				<ReferenceLine
					y={75}
					stroke="#d1d5db"
					strokeDasharray="4 4"
					label={{ value: "75%", position: "right", fontSize: 11, fill: "#9ca3af" }}
				/>
				<Tooltip
					formatter={(value) => [`${value}%`, "Score"]}
					labelStyle={{ color: "#374151", fontWeight: 600 }}
					contentStyle={{
						borderRadius: 8,
						border: "1px solid #e5e7eb",
						fontSize: 13,
					}}
				/>
				<Line
					type="monotone"
					dataKey="score"
					stroke="#10b981"
					strokeWidth={2}
					dot={{ r: 3, fill: "#10b981" }}
					activeDot={{ r: 5 }}
				/>
			</LineChart>
		</ResponsiveContainer>
	);
}
