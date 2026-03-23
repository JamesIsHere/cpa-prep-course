import GateButtons from "./gate-buttons";

export const metadata = {
	title: "Slayer Mode — Admin",
};

export default function AdminGatePage() {
	return (
		<div className="flex items-center justify-center min-h-[calc(100vh-64px)]">
			<div className="max-w-md w-full mx-4">
				<div className="text-center mb-8">
					<h1 className="text-2xl font-bold text-gray-900">What are we doing?</h1>
				</div>

				<GateButtons />
			</div>
		</div>
	);
}
