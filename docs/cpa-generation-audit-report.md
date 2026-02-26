# CPA Question Generation & Calibration Audit Report

**Date:** February 26, 2026  
**Status:** In Progress (Scaling Phase)  
**Target Goal:** 20,000 Questions  
**Current Progress:** ~5,000 baseline + ~2,000 newly generated (~35% of target)

---

## 1. Executive Summary

The Slayer CPA project is currently executing a large-scale content expansion strategy, moving from a 5,000-question baseline to a comprehensive 20,000-question bank. The process is highly automated, utilizing a custom "Orchestrator" pipeline that integrates Large Language Models (LLMs) with multi-stage validation, de-duplication, and calibration against the official AICPA 2026 CPA Blueprint.

The system demonstrates high technical maturity, with robust self-correction loops and sophisticated planning logic. However, opportunities exist to tighter integrate lesson content and structured mental models ("Study Frameworks") into the generation loop to ensure absolute alignment between instruction and assessment.

---

## 2. Process Overview: The Generation Lifecycle

The question building methodology follows a rigorous **Research -> Plan -> Orchestrate -> Validate** lifecycle.

### 2.1 Planning & Distribution
The process begins with `plan-distribution.ts`, which performs a gap analysis by comparing the current database state against the AICPA Blueprint.
- **Blueprint-Driven:** Every topic is weighted based on the AICPA's examination areas.
- **Section Targets:** Core sections (AUD, FAR, REG) are targeted at 5,000 questions each; Discipline sections (BAR, ISC, TCP) at ~1,667 each.
- **Bloom’s Calibration:** Specific distributions are set for each section type (e.g., Core sections target 25% L1, while Disciplines shift toward 30% L3 Analysis).

### 2.2 Orchestration
The `orchestrate.ps1` script manages the execution phase. It isolates each "batch" (typically 30 questions) into its own context. This prevents "context drift" and ensures that the LLM (Claude) remains focused on the specific style guide and topic requirements for that batch.

### 2.3 Generation & Scaffolding
- **Scaffold First:** The system generates SQL "scaffolds" with `TODO` placeholders for explanations.
- **Scenario-First Stems:** For L2+ questions, the prompt mandates realistic scenarios with named entities, specific dates, and complex dollar amounts.
- **Parallel Distractors:** Guidelines enforce parallel grammar in choices and prohibit "all/none of the above" patterns.

### 2.4 Validation & Self-Correction
Before a batch is finalized, it must pass three gates:
1.  **Technical Validation:** `validate-migration.ts` checks for word counts, citation presence, and banned distractor patterns.
2.  **Duplicate Detection:** `check-generation-duplicates.ts` uses trigram similarity and Jaccard indices to ensure new questions don't duplicate existing DB content.
3.  **Self-Correction Loop:** If validation fails, the Orchestrator feeds the error logs back to Claude for a surgical fix.

---

## 3. Calibration Methodology

### 3.1 Difficulty Normalization
The system targets a bell-curve-like distribution:
- **Easy (30%):** Direct recall (L1/L2).
- **Medium (50%):** Multi-step application or analysis.
- **Hard (20%):** Complex evaluation or nuanced distinction.

### 3.2 Bloom's Taxonomy Mapping
Questions are tagged with a `cognitive_level` (1-4) reflecting the AICPA rubric:
- **L1:** Remembering & Understanding
- **L2:** Application
- **L3:** Analysis
- **L4:** Evaluation

The Orchestrator includes a `blooms` rebalancing mode specifically designed to "upgrade" low-level questions into higher cognitive levels by adding scenario complexity and judgmental ambiguity.

---

## 4. Findings & Improvement Areas

While the current process is efficient, the following gaps have been identified:

### 4.1 Lesson Alignment Gap
*   **Observation:** The generation prompt uses the blueprint topic name but does not ingest the corresponding `.mdx` lesson content.
*   **Risk:** Questions might test concepts or use terminology slightly different from what is presented in the "Slayer" lessons.
*   **Improvement:** Ingest lesson text for the specific topic into the generation prompt to ensure "Tested-as-Taught" consistency.

### 4.2 Framework-to-Question Mapping
*   **Observation:** The project has excellent "Execution Frameworks" (mnemonics, decision trees, and concept maps) in `src/lib/study-frameworks/`, but these are not currently used to "guide" question generation.
*   **Improvement:** Pass the relevant `ConceptMap` or `DecisionTree` to Claude during generation. Specifically ask for questions that "require the application of the [X] Mnemonic" or "test the [Y] branch of the Decision Tree."

### 4.3 Conceptual Diversity
*   **Observation:** Trigram de-duplication prevents *verbal* duplication but doesn't necessarily ensure *conceptual* breadth.
*   **Improvement:** Implement "Concept Stem" extraction. Use an LLM pass to identify the "Core Concept Tested" (e.g., "Treatment of Type I Subsequent Events") for every question in a topic and ensure the next batch tests different "leaves" of that topic's concept map.

### 4.4 Feedback Integration
*   **Observation:** There is no automated path from the `feedback_table` (user-reported issues) back into the rebalancing scripts.
*   **Improvement:** Create a `pull-feedback-candidates.ts` script that identifies "Moderate" or "Critical" rated questions for automatic "Correction Mode" in the orchestrator.

---

## 5. Recommended Actions

1.  **Phase 2 Orchestration Upgrade:** Modify `Build-Prompt` in `orchestrate.ps1` to read and include the corresponding MDX lesson content and Study Framework items for the target topic.
2.  **Diversity Matrix:** Add a "Sub-topic" or "Concept Tag" to the `generation-plan.json` to move beyond simple counts and into "Sub-topic coverage" (e.g., in AUD Audit Reports, ensuring a mix of Modified vs. Unmodified vs. Disclaimer).
3.  **Simulation Prep:** Start a new Orchestrator mode for "SIM Generation" (Task-Based Simulations), as the current pipeline is optimized for Multiple Choice Questions (MCQs).
4.  **Automatic PDF Generation:** Integrate a headless PDF renderer to convert the `.mdx` content and frameworks into the "pdf lesson files" mentioned by the user, ensuring they are always in sync with the live codebase.

---
**Audit Performed by:** Gemini CLI  
**Reference Scripts:** `scripts/qa/*`, `src/lib/study-frameworks/*`, `scripts/orchestrate.ps1`
