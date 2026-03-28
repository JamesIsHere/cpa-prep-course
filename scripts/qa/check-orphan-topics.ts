// Check for orphaned question topics — topics in the DB that don't map to any blueprint group
// Usage: npx tsx scripts/qa/check-orphan-topics.ts

import { supabase } from "./db-client";
import { cpaBlueprint } from "../../src/lib/blueprint";

// Build a map: topic string → { section, area, group, lessonSlugs }
interface BlueprintMapping {
  sectionCode: string;
  areaNumber: number;
  areaName: string;
  groupLetter: string;
  groupName: string;
  lessonSlugs: string[];
}

const topicToBlueprintMap = new Map<string, BlueprintMapping>();
const allBlueprintTopics = new Set<string>();

for (const section of cpaBlueprint) {
  for (const area of section.areas) {
    for (const group of area.groups) {
      for (const topic of group.questionTopics) {
        allBlueprintTopics.add(topic);
        topicToBlueprintMap.set(topic, {
          sectionCode: section.code,
          areaNumber: area.area,
          areaName: area.name,
          groupLetter: group.letter,
          groupName: group.name,
          lessonSlugs: group.lessonSlugs,
        });
      }
    }
  }
}

async function main() {
  // Get all distinct topic + section_id combos from DB
  const { data: sections } = await supabase
    .from("sections")
    .select("id, code");
  if (!sections) {
    console.error("Failed to fetch sections");
    process.exit(1);
  }
  const sectionIdToCode = new Map(sections.map((s: { id: number; code: string }) => [s.id, s.code]));
  const sectionCodeToId = new Map(sections.map((s: { id: number; code: string }) => [s.code, s.id]));

  // Fetch all distinct topics with counts per section
  const { data: topicRows, error } = await supabase.rpc("exec_sql", {
    sql: `
      SELECT s.code as section_code, q.topic, COUNT(*) as count
      FROM questions q
      JOIN sections s ON s.id = q.section_id
      GROUP BY s.code, q.topic
      ORDER BY s.code, q.topic
    `,
  });

  if (error) {
    console.error("Query error:", error.message);
    // Fallback: fetch without RPC
    console.log("\nFalling back to paginated fetch...");
    await runFallback(sectionIdToCode);
    return;
  }

  analyzeResults(topicRows);
}

async function runFallback(sectionIdToCode: Map<number, string>) {
  // Paginated fetch of all questions, just id/section_id/topic
  const all: { section_id: number; topic: string }[] = [];
  const pageSize = 1000;
  let offset = 0;

  while (true) {
    const { data, error } = await supabase
      .from("questions")
      .select("section_id, topic")
      .range(offset, offset + pageSize - 1)
      .order("id");

    if (error) {
      console.error("DB error:", error.message);
      process.exit(1);
    }
    if (!data || data.length === 0) break;
    all.push(...data);
    if (data.length < pageSize) break;
    offset += pageSize;
  }

  // Aggregate
  const counts = new Map<string, number>();
  for (const row of all) {
    const code = sectionIdToCode.get(row.section_id) ?? "???";
    const key = `${code}|${row.topic}`;
    counts.set(key, (counts.get(key) ?? 0) + 1);
  }

  const topicRows = Array.from(counts.entries()).map(([key, count]) => {
    const [section_code, topic] = key.split("|");
    return { section_code, topic, count };
  }).sort((a, b) => a.section_code.localeCompare(b.section_code) || a.topic.localeCompare(b.topic));

  analyzeResults(topicRows);
}

function analyzeResults(topicRows: { section_code: string; topic: string; count: number }[]) {
  const orphans: { section_code: string; topic: string; count: number }[] = [];
  const noLesson: { section_code: string; topic: string; count: number; groupName: string }[] = [];
  const healthy: { section_code: string; topic: string; count: number; mapping: BlueprintMapping }[] = [];
  const nullTopics: { section_code: string; count: number }[] = [];

  for (const row of topicRows) {
    if (!row.topic || row.topic.trim() === "") {
      nullTopics.push({ section_code: row.section_code, count: Number(row.count) });
      continue;
    }

    const mapping = topicToBlueprintMap.get(row.topic);
    if (!mapping) {
      orphans.push({ ...row, count: Number(row.count) });
    } else if (mapping.lessonSlugs.length === 0) {
      noLesson.push({ ...row, count: Number(row.count), groupName: mapping.groupName });
    } else {
      healthy.push({ ...row, count: Number(row.count), mapping });
    }
  }

  // Also check: blueprint topics with 0 questions in DB
  const dbTopics = new Set(topicRows.map((r) => r.topic));
  const blueprintWithNoQuestions: string[] = [];
  for (const topic of allBlueprintTopics) {
    if (!dbTopics.has(topic)) {
      blueprintWithNoQuestions.push(topic);
    }
  }

  // --- Report ---
  console.log("═══════════════════════════════════════════════════════════");
  console.log("  QUESTION → BLUEPRINT → LESSON ORPHAN CHECK");
  console.log("═══════════════════════════════════════════════════════════\n");

  // Healthy summary
  console.log(`✓ FULLY MAPPED: ${healthy.length} topic-section combos (${healthy.reduce((s, h) => s + h.count, 0)} questions)`);
  console.log("");

  // Orphans (topic not in blueprint at all)
  if (orphans.length > 0) {
    console.log(`✗ ORPHANED TOPICS (no blueprint match): ${orphans.length}`);
    console.log("  These questions have a topic that doesn't appear in any BlueprintGroup.questionTopics[]");
    console.log("");
    for (const o of orphans) {
      console.log(`  [${o.section_code.toUpperCase()}] "${o.topic}" — ${o.count} questions`);
    }
    console.log("");
  } else {
    console.log("✓ No orphaned topics — every DB topic maps to a blueprint group\n");
  }

  // Topics that map to blueprint but group has no lesson
  if (noLesson.length > 0) {
    console.log(`⚠ MAPPED TO BLUEPRINT BUT NO LESSON: ${noLesson.length}`);
    console.log("  These topics map to a blueprint group, but that group has empty lessonSlugs[]");
    console.log("");
    for (const n of noLesson) {
      console.log(`  [${n.section_code.toUpperCase()}] "${n.topic}" → group "${n.groupName}" — ${n.count} questions`);
    }
    console.log("");
  } else {
    console.log("✓ Every mapped topic has at least one lesson\n");
  }

  // Null/empty topics
  if (nullTopics.length > 0) {
    console.log(`✗ NULL/EMPTY TOPICS: ${nullTopics.length} sections affected`);
    for (const n of nullTopics) {
      console.log(`  [${n.section_code.toUpperCase()}] ${n.count} questions with null/empty topic`);
    }
    console.log("");
  }

  // Blueprint topics with no questions
  if (blueprintWithNoQuestions.length > 0) {
    console.log(`⚠ BLUEPRINT TOPICS WITH 0 DB QUESTIONS: ${blueprintWithNoQuestions.length}`);
    for (const t of blueprintWithNoQuestions) {
      const mapping = topicToBlueprintMap.get(t)!;
      console.log(`  [${mapping.sectionCode.toUpperCase()}] "${t}" — Area ${mapping.areaNumber}, Group ${mapping.groupLetter}`);
    }
    console.log("");
  }

  // Full chain audit for healthy topics
  console.log("───────────────────────────────────────────────────────────");
  console.log("  FULL CHAIN: Question topic → Blueprint Group → Lesson");
  console.log("───────────────────────────────────────────────────────────\n");

  let currentSection = "";
  for (const h of healthy) {
    if (h.section_code !== currentSection) {
      currentSection = h.section_code;
      console.log(`\n  ── ${currentSection.toUpperCase()} ──`);
    }
    const m = h.mapping;
    console.log(
      `  "${h.topic}" (${h.count}q) → Area ${m.areaNumber} Group ${m.groupLetter}: ${m.groupName} → lesson: ${m.lessonSlugs.join(", ")}`
    );
  }

  // Summary
  console.log("\n═══════════════════════════════════════════════════════════");
  const totalQ = healthy.reduce((s, h) => s + h.count, 0) +
    orphans.reduce((s, o) => s + o.count, 0) +
    noLesson.reduce((s, n) => s + n.count, 0) +
    nullTopics.reduce((s, n) => s + n.count, 0);
  console.log(`  TOTAL: ${totalQ} questions across ${topicRows.length} topic-section combos`);
  console.log(`  Fully mapped:    ${healthy.reduce((s, h) => s + h.count, 0)}`);
  console.log(`  Orphaned:        ${orphans.reduce((s, o) => s + o.count, 0)}`);
  console.log(`  No lesson:       ${noLesson.reduce((s, n) => s + n.count, 0)}`);
  console.log(`  Null/empty:      ${nullTopics.reduce((s, n) => s + n.count, 0)}`);
  console.log(`  Blueprint gaps:  ${blueprintWithNoQuestions.length} topics with 0 questions`);
  console.log("═══════════════════════════════════════════════════════════");

  // Exit code
  if (orphans.length > 0 || nullTopics.length > 0) {
    process.exit(1);
  }
}

main().catch((err) => {
  console.error(err);
  process.exit(1);
});
