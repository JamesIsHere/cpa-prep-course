// Barrel for topic specifications. Lookup is by `questions.topic` field value.
//
// Add a new spec by:
//   1. Creating src/lib/topic-specs/<section>-<kebab-topic-name>.ts that exports a `spec`
//      object conforming to TopicSpec
//   2. Importing and registering it below
//
// Topics without a spec return undefined — the generator and validator should treat that
// as "no scope constraint" (legacy behavior) until specs cover the full bank.

import type { TopicSpec } from "./types";
import { spec as barProspective } from "./bar-prospective-analysis-and-forecasting";

const SPECS: Record<string, TopicSpec> = {
	[barProspective.topic]: barProspective,
};

/** Look up the topic spec for a given questions.topic value. Returns undefined if none. */
export function getTopicSpec(topic: string): TopicSpec | undefined {
	return SPECS[topic];
}

/** All registered topic specs (for audit / overview tooling). */
export function allTopicSpecs(): TopicSpec[] {
	return Object.values(SPECS);
}

/** Topics that have a spec written. */
export function specifiedTopics(): string[] {
	return Object.keys(SPECS);
}

export type { TopicSpec } from "./types";
