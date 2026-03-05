// Shared utilities for QA scripts — migration numbering, file locking, text similarity

import { readdirSync, writeFileSync, unlinkSync, existsSync } from "fs";
import { dirname, resolve } from "path";
import { fileURLToPath } from "url";

const __dirname = dirname(fileURLToPath(import.meta.url));
const migrationsDir = resolve(__dirname, "../../supabase/migrations");
const lockFile = resolve(migrationsDir, ".migration-lock");

// ─── Migration numbering ────────────────────────────────────────

/**
 * Auto-detect next migration number from supabase/migrations/ directory.
 * Uses file lock to prevent collisions during parallel runs.
 */
export function getNextMigrationNumber(): string {
	const files = readdirSync(migrationsDir).filter((f) => /^\d{5}_/.test(f)).sort();
	const last = files[files.length - 1];
	const num = parseInt(last.slice(0, 5)) + 1;
	return String(num).padStart(5, "0");
}

export function getMigrationsDir(): string {
	return migrationsDir;
}

// ─── File locking (for parallel migration generation) ───────────

/**
 * Acquire a file lock for migration number allocation.
 * Spins with backoff for up to 10 seconds.
 */
export function acquireMigrationLock(): void {
	const maxWaitMs = 10000;
	const startTime = Date.now();
	let delay = 50;

	while (existsSync(lockFile)) {
		if (Date.now() - startTime > maxWaitMs) {
			// Stale lock — force remove
			try {
				unlinkSync(lockFile);
			} catch {
				// Another process may have removed it
			}
			break;
		}
		const waitUntil = Date.now() + delay;
		while (Date.now() < waitUntil) {
			// Busy wait (sync sleep)
		}
		delay = Math.min(delay * 2, 500);
	}

	writeFileSync(lockFile, `${process.pid}\n${new Date().toISOString()}`);
}

/**
 * Release the migration file lock.
 */
export function releaseMigrationLock(): void {
	try {
		unlinkSync(lockFile);
	} catch {
		// Already removed
	}
}

/**
 * Get next migration number with file lock protection.
 * Use this instead of getNextMigrationNumber() for parallel safety.
 */
export function getNextMigrationNumberSafe(): string {
	acquireMigrationLock();
	try {
		return getNextMigrationNumber();
	} finally {
		releaseMigrationLock();
	}
}

// ─── Text similarity (trigrams + Jaccard) ───────────────────────

/**
 * Generate character trigrams from text.
 * Extracted from analyzers/duplicates.ts for shared use.
 */
export function trigrams(text: string): Set<string> {
	const normalized = text
		.toLowerCase()
		.replace(/[^a-z0-9\s]/g, "")
		.replace(/\s+/g, " ")
		.trim();
	const result = new Set<string>();
	for (let i = 0; i <= normalized.length - 3; i++) {
		result.add(normalized.slice(i, i + 3));
	}
	return result;
}

/**
 * Jaccard similarity between two trigram sets (0-1 scale).
 */
export function jaccardSimilarity(a: Set<string>, b: Set<string>): number {
	if (a.size === 0 && b.size === 0) return 1;
	let intersection = 0;
	for (const t of a) {
		if (b.has(t)) intersection++;
	}
	const union = a.size + b.size - intersection;
	return union === 0 ? 0 : intersection / union;
}

// ─── Stem normalization (semantic dedup) ─────────────────────────

/**
 * Normalize a question stem for semantic duplicate detection.
 * Strips entity names, dollar amounts, percentages, dates, and other
 * variable details so that questions differing only in names/numbers
 * produce the same normalized form.
 *
 * E.g., "Acme Corp reports $50,000..." and "Baker LLC reports $75,000..."
 * both normalize to the same string.
 */
export function normalizeStem(stem: string): string {
	return (
		stem
			// Dates with month names: must run BEFORE entity matching (case-insensitive)
			// "January 15, 2024", "Dec. 31, 2024", "March 3, 2025"
			.replace(
				/\b(?:January|February|March|April|May|June|July|August|September|October|November|December|Jan|Feb|Mar|Apr|Jun|Jul|Aug|Sep|Oct|Nov|Dec)\.?\s+\d{1,2},?\s+\d{4}\b/gi,
				"DATE",
			)
			// Named entities: must run BEFORE toLowerCase since we match on capitalization
			// Match capitalized words optionally followed by LLC/Inc/Corp/Co/LLP/etc.
			.replace(
				/\b[A-Z][a-z]+(?:\s+(?:&|and|of)\s+[A-Z][a-z]+|\s+[A-Z][a-z]+){0,3}(?:\s+(?:LLC|Inc|Corp|Co|LLP|PC|PA|Ltd)\.?)?\b/g,
				"ENTITY",
			)
			.toLowerCase()
			// CPA boilerplate phrases → canonical tokens
			.replace(/which\s+of\s+the\s+following\s+(?:statements?\s+)?(?:is|are|best|most\s+(?:likely|accurately))\b/gi, "WHICH")
			.replace(/which\s+of\s+the\s+following\b/gi, "WHICH")
			.replace(/(?:during\s+the\s+audit\s+of|while\s+auditing|when\s+reviewing)\b/gi, "")
			.replace(/(?:for\s+the\s+(?:year|period)\s+ended|during\s+the\s+current\s+(?:year|period))\b/gi, "PERIOD")
			// Dollar amounts: $1,234.56 → $X
			.replace(/\$[\d,]+(?:\.\d+)?/g, "$X")
			// Percentages: 15%, 3.5% → X%
			.replace(/\d+(?:\.\d+)?%/g, "X%")
			// Numeric dates: 12/31/2024, 2024-12-31
			.replace(/\d{1,2}\/\d{1,2}\/\d{2,4}/g, "DATE")
			.replace(/\d{4}-\d{2}-\d{2}/g, "DATE")
			// Standalone years: 2023, 2024, 2025
			.replace(/\b20\d{2}\b/g, "YEAR")
			// Plain large numbers: 1,000 or 50000 (not already caught by $)
			.replace(/\b\d{1,3}(?:,\d{3})+\b/g, "NUM")
			.replace(/\b\d{4,}\b/g, "NUM")
			// Collapse whitespace
			.replace(/\s+/g, " ")
			.trim()
	);
}

/**
 * Extract significant words (≥4 chars) from a normalized stem, sorted alphabetically.
 * Used for concept-key overlap detection.
 */
export function extractConceptKeys(normalizedStem: string): string[] {
	const stopWords = new Set([
		"this", "that", "with", "from", "have", "been", "would", "should", "could",
		"will", "what", "when", "where", "which", "their", "there", "they", "them",
		"than", "then", "these", "those", "into", "also", "does", "each", "most",
		"must", "only", "over", "such", "some", "were", "your", "under", "after",
		"about", "being", "before", "between", "entity", "period", "year", "date",
		"following", "statement", "statements",
	]);
	return normalizedStem
		.split(/\s+/)
		.filter((w) => w.length >= 4 && !stopWords.has(w))
		.sort();
}

// ─── Stdin reader ───────────────────────────────────────────────

export async function readStdin(): Promise<string> {
	const chunks: Buffer[] = [];
	for await (const chunk of process.stdin) {
		chunks.push(chunk);
	}
	return Buffer.concat(chunks).toString("utf-8");
}
