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

// ─── Stdin reader ───────────────────────────────────────────────

export async function readStdin(): Promise<string> {
	const chunks: Buffer[] = [];
	for await (const chunk of process.stdin) {
		chunks.push(chunk);
	}
	return Buffer.concat(chunks).toString("utf-8");
}
