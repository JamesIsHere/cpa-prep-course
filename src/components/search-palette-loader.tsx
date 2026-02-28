"use client";

import dynamic from "next/dynamic";

const SearchPalette = dynamic(() => import("@/components/search-palette"), {
	ssr: false,
});

export default function SearchPaletteLoader() {
	return <SearchPalette />;
}
