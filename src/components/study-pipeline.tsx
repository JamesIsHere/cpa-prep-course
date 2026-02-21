const steps = [
	{
		label: "Blueprint",
		tagline: "Map it",
		description: "See what the exam covers using the official AICPA structure.",
		icon: (
			<svg
				viewBox="0 0 24 24"
				fill="none"
				stroke="currentColor"
				strokeWidth={2}
				className="w-6 h-6"
			>
				<rect x="3" y="3" width="7" height="7" rx="1" />
				<rect x="14" y="3" width="7" height="7" rx="1" />
				<rect x="3" y="14" width="7" height="7" rx="1" />
				<rect x="14" y="14" width="7" height="7" rx="1" />
			</svg>
		),
	},
	{
		label: "Lesson",
		tagline: "Learn it",
		description:
			"Study each topic in depth with worked examples and key terms.",
		icon: (
			<svg
				viewBox="0 0 24 24"
				fill="none"
				stroke="currentColor"
				strokeWidth={2}
				className="w-6 h-6"
			>
				<path d="M4 19.5A2.5 2.5 0 016.5 17H20" />
				<path d="M6.5 2H20v20H6.5A2.5 2.5 0 014 19.5v-15A2.5 2.5 0 016.5 2z" />
				<path d="M8 7h8M8 11h5" />
			</svg>
		),
	},
	{
		label: "Framework",
		tagline: "Drill it",
		description:
			"Lock in the mental model with concept maps, decision trees, and formulas.",
		icon: (
			<svg
				viewBox="0 0 24 24"
				fill="none"
				stroke="currentColor"
				strokeWidth={2}
				className="w-6 h-6"
			>
				<path d="M9 5H7a2 2 0 00-2 2v12a2 2 0 002 2h10a2 2 0 002-2V7a2 2 0 00-2-2h-2" />
				<rect x="9" y="3" width="6" height="4" rx="1" />
				<path d="M9 14l2 2 4-4" />
			</svg>
		),
	},
	{
		label: "Practice",
		tagline: "Test it",
		description:
			"Prove your understanding with quizzes and timed practice exams.",
		icon: (
			<svg
				viewBox="0 0 24 24"
				fill="none"
				stroke="currentColor"
				strokeWidth={2}
				className="w-6 h-6"
			>
				<circle cx="12" cy="12" r="9" />
				<path d="M12 7v5l3 3" />
			</svg>
		),
	},
];

export function StudyPipeline({
	variant,
	activeStep,
}: {
	variant: "full" | "compact";
	activeStep?: 1 | 2 | 3 | 4;
}) {
	if (variant === "compact") {
		return (
			<div className="flex items-center gap-1 text-sm mb-6 flex-wrap">
				{steps.map((step, i) => {
					const stepNum = (i + 1) as 1 | 2 | 3 | 4;
					const isActive = stepNum === activeStep;
					const isCompleted = activeStep !== undefined && stepNum < activeStep;

					return (
						<span key={step.label} className="flex items-center gap-1">
							<span
								className={`inline-flex items-center gap-1 px-2 py-0.5 rounded-full ${
									isActive
										? "bg-emerald-100 text-emerald-700 font-semibold"
										: isCompleted
											? "text-emerald-600"
											: "text-gray-400"
								}`}
							>
								<span
									className={`w-4 h-4 rounded-full text-xs flex items-center justify-center font-bold ${
										isActive
											? "bg-emerald-600 text-white"
											: isCompleted
												? "bg-emerald-200 text-emerald-700"
												: "bg-gray-200 text-gray-500"
									}`}
								>
									{stepNum}
								</span>
								{step.label}
							</span>
							{i < steps.length - 1 && (
								<span
									className={isCompleted ? "text-emerald-400" : "text-gray-300"}
								>
									&rarr;
								</span>
							)}
						</span>
					);
				})}
			</div>
		);
	}

	return (
		<div className="grid grid-cols-1 sm:grid-cols-4 gap-4 sm:gap-0">
			{steps.map((step, i) => {
				const stepNum = (i + 1) as 1 | 2 | 3 | 4;
				const isActive = activeStep !== undefined && stepNum === activeStep;

				return (
					<div
						key={step.label}
						className="flex sm:flex-col items-start sm:items-center text-center relative"
					>
						{/* Connector line (between steps on desktop) */}
						{i < steps.length - 1 && (
							<div className="hidden sm:block absolute top-5 left-[calc(50%+24px)] right-[calc(-50%+24px)] h-px bg-gray-200" />
						)}

						{/* Icon circle */}
						<div
							className={`w-10 h-10 rounded-full flex items-center justify-center shrink-0 relative z-10 ${
								isActive
									? "bg-emerald-600 text-white"
									: "bg-emerald-50 text-emerald-600 border border-emerald-200"
							}`}
						>
							{step.icon}
						</div>

						{/* Text */}
						<div className="ml-4 sm:ml-0 sm:mt-3">
							<p className="font-semibold text-gray-900 text-sm">
								{step.label}
							</p>
							<p className="text-emerald-600 text-xs font-medium">
								{step.tagline}
							</p>
							<p className="text-gray-500 text-xs mt-1 max-w-[180px] leading-relaxed hidden sm:block">
								{step.description}
							</p>
						</div>

						{/* Mobile arrow */}
						{i < steps.length - 1 && (
							<span className="sm:hidden text-gray-300 ml-auto self-center text-lg">
								&darr;
							</span>
						)}
					</div>
				);
			})}
		</div>
	);
}
