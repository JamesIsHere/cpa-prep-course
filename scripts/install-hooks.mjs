#!/usr/bin/env node
/**
 * Install git hooks for the CPA prep course repo.
 * Safe to run multiple times — overwrites the hook file.
 *
 * Usage: node scripts/install-hooks.mjs
 */
import { writeFileSync, chmodSync } from 'fs';
import { join } from 'path';

const hookPath = join('.git', 'hooks', 'pre-commit');

const hookContent = `#!/bin/sh
# Migration safety gate — blocks commits with unapplied or broken migrations.
# Installed by scripts/install-hooks.mjs
#
# Uses a temp file for the exit code because Node.js on Windows has a bug
# where fetch() causes an assertion crash during process cleanup, producing
# a non-zero exit even when the script logic succeeded.

RESULT_FILE=".git/hooks/.pre-commit-result"
rm -f "$RESULT_FILE"
node scripts/pre-commit-migrations.mjs 2>/dev/null
# Read the result file the script wrote
if [ -f "$RESULT_FILE" ]; then
  RESULT=$(cat "$RESULT_FILE")
  rm -f "$RESULT_FILE"
  exit $RESULT
else
  # If no result file, something went very wrong — block the commit
  echo "Migration gate: no result file produced. Blocking commit."
  exit 1
fi
`;

writeFileSync(hookPath, hookContent);
try {
  chmodSync(hookPath, '755');
} catch {
  // Windows doesn't need chmod
}

process.stdout.write(`✅ Installed pre-commit hook at ${hookPath}\n`);
process.stdout.write(`   Checks: TODO placeholders, DB tracking, count drift\n`);
