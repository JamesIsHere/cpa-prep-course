# Slayer CPA — Marketing Plan

## Positioning

> Full CPA exam prep for $29.99/month. No loans. No employer required. No excuses.

Slayer CPA is a full-scope CPA prep course priced for the underserved majority: self-studiers, career changers, small-firm staff, international candidates, and the new wave entering through relaxed 150-hour pathways. The brand is faceless — the product speaks for itself.

## Market Context

### Competitor Pricing

| Provider       | Package       | Price           | Access         |
|----------------|---------------|-----------------|----------------|
| Becker         | Advantage     | $2,499          | 24 months      |
| Becker         | Pro           | $3,799          | Unlimited      |
| UWorld Roger   | Elite         | $2,299          | Until pass     |
| Gleim          | Premium       | $2,999          | Unlimited      |
| Surgent        | Ultimate Pass | $1,999          | Until pass     |
| NINJA CPA      | Monthly       | $67-87/month    | Month-to-month |
| **Slayer CPA** | **Monthly**   | **$29.99/month** | **Month-to-month** |

Slayer CPA is 55-92% cheaper than every competitor. A full year costs $359.88 vs. $2,499+ at Becker. NINJA (the only other monthly option) is 2-3x more expensive.

### Target Audience

- ~74,000 candidates sit for the CPA exam annually; ~27,000 are new each year
- 30-40% self-funding (no employer sponsorship) = 22,000-30,000 addressable candidates
- Entry-level firm staff, career changers, small-firm employees, international candidates
- Age 22-30, cost-conscious, often carrying student debt
- 150-hour reform (24+ states) is expanding the pipeline with candidates who lack employer sponsorship

### Where Candidates Discover Prep Resources

| Channel                         | Reach             | Role                                             |
|---------------------------------|-------------------|--------------------------------------------------|
| r/CPA (Reddit)                  | ~105,000 members  | Primary purchasing decision channel               |
| r/Accounting (Reddit)           | ~1,200,000 members| Broad professional community                      |
| YouTube                         | 500K+ per channel | Free content discovery (Accounting Stuff, etc.)   |
| Another71 Forum                 | 600,000+ posts    | Dedicated CPA exam forum since 2009               |
| TikTok/Instagram                | Growing           | #CPAExam, #StudyTok, short-form study content     |
| Facebook Groups                 | Thousands         | Section-specific CPA Exam Club groups             |

## Strategy

### Pre-Launch Checklist (Before Any Marketing)

These must be done before driving traffic:

1. **Verify Stripe is live** — confirm production keys in Vercel, test a real $29.99 checkout, verify webhook fires and subscription activates
2. **Set up Google Search Console** — verify slayer-cpa.com, submit sitemap.xml
3. **Set up Google Analytics (GA4)** — install tracking on the site (or rely on Vercel Analytics if sufficient)
4. **Verify domain and SSL** — confirm www.slayer-cpa.com resolves correctly with HTTPS

### Phase 1: Foundation (Weeks 1-8)

**Goal:** Organic presence, SEO foundation, Reddit credibility. No ad spend yet.

**Budget:** $0 (organic only — save the $200-500/mo budget for Phase 2)

#### Blog / SEO Content

Add a `/blog` route to the site. Publish 2 posts per week, drafted by Claude, edited and published by you.

**Priority content calendar:**

| Week | Post                                           | Type        | Target keyword                     |
|------|------------------------------------------------|-------------|------------------------------------|
| 1    | Slayer CPA vs Becker: Full Comparison          | Comparison  | "Becker CPA review alternative"    |
| 1    | How Much Does CPA Exam Prep Really Cost?       | Guide       | "CPA exam cost breakdown"          |
| 2    | Slayer CPA vs Surgent: Which Is Better?        | Comparison  | "Surgent CPA review"               |
| 2    | Which CPA Section Should You Take First?       | Guide       | "CPA section order"                |
| 3    | Slayer CPA vs NINJA CPA Review                 | Comparison  | "NINJA CPA review"                 |
| 3    | CPA Exam Study Plan: 12-Month Schedule         | Guide       | "CPA study plan"                   |
| 4    | Best CPA Review Courses 2026 (Ranked)          | Roundup     | "best CPA review course 2026"      |
| 4    | CPA Exam Pass Rates by Section (Updated)       | Data        | "CPA exam pass rates"              |
| 5    | Is Becker Worth It? An Honest Look             | Opinion     | "is Becker CPA worth it"           |
| 5    | FAR Topic Guide: What You Need to Know         | Guide       | "FAR CPA exam topics"              |
| 6    | CPA Exam for Under $200: Complete Guide        | Guide       | "cheapest CPA prep"                |
| 6    | AUD Topic Guide: What You Need to Know         | Guide       | "AUD CPA exam topics"              |
| 7    | 150-Hour Rule Reform: State-by-State Tracker   | Reference   | "CPA 150 hour rule reform"         |
| 7    | REG Topic Guide: What You Need to Know         | Guide       | "REG CPA exam topics"              |
| 8    | CPA vs CMA vs CFA: Which Credential?           | Comparison  | "CPA vs CMA"                       |
| 8    | How to Pass FAR on Your First Try              | Guide       | "how to pass FAR CPA"              |

Comparison pages are highest leverage — candidates actively search "[CourseA] vs [CourseB]" when deciding.

#### Reddit Presence

- Participate organically in r/CPA and r/Accounting — answer questions, share study tips
- Do not spam or hard-sell; Reddit communities punish overt marketing
- When "what course should I use?" threads appear, mention Slayer CPA with honest context (what it offers, what it does not)
- Share free study content (schedules, topic breakdowns) that links back to the site
- Build a post history of genuine helpfulness before any self-promotion

#### Free Content Lead Gen

The site already has free intro lessons for every section. Additional free assets:

- Downloadable CPA exam study plan template (PDF)
- Section-by-section topic checklist (PDF)
- "CPA Exam Quick Start Guide" blog post series
- Sample quiz (10 questions, no signup required) on landing pages

No email gating for now — keep the free content truly free to maximize reach. Email capture can come later when there is traffic to convert.

### Phase 2: Growth (Months 3-6)

**Goal:** Convert organic traffic to subscribers, introduce paid acquisition, build social proof.

**Budget:** $200-500/month on ads

#### Google Ads ($150-350/month)

- Target high-intent keywords: "CPA review course," "best CPA prep course," "cheapest CPA prep"
- Focus on comparison keywords: "Becker alternative," "CPA prep under $100"
- Landing pages tailored to each keyword with clear $29.99/month CTA
- Expected CPC: $3-8 for CPA prep keywords
- Target CAC: under $30 (3 months of subscription revenue)
- Start small ($5-10/day), scale what converts

#### Reddit Ads ($50-150/month)

- Target r/CPA and r/Accounting subscribers
- Ad creative: "Full CPA exam prep for $29.99/month. 96 lessons. 4,400+ questions. All 6 sections."
- Use promoted posts that look organic, not banner ads
- Reddit ads are cheaper than Google and reach the exact audience

#### Social Proof

- Ask early subscribers for testimonials after 30 days
- Feature pass scores on the site as they come in (score release cycles: quarterly)
- Add a simple testimonials section to the homepage
- Consider a "Wall of Scores" page once there are enough results

#### Email Marketing (Free Tools)

- Add email capture on the blog (Buttondown, Mailchimp free tier, or Supabase-native)
- Weekly email: one study tip + one practice question + blog post link
- Score release emails (quarterly) with pass rate analysis
- Drip sequence for free users: free lesson → study plan → subscribe prompt

### Phase 3: Scale (Month 6+)

**Goal:** Double down on what works, cut what doesn't.

- Review Google Ads performance — kill underperforming keywords, scale winners
- Review Reddit Ads — test new creatives, expand targeting
- If organic blog traffic is growing, increase post frequency
- Revisit video content — if competitors' YouTube presence is dominating search results, consider screen-recorded explainers (faceless, no camera needed)
- Consider affiliate partnerships with accounting professors or study group admins
- Explore CPA score release cycle timing for ad spend spikes (candidates who fail look for new prep immediately)

## Handling Objections

| Objection | Counter |
|---|---|
| "If it's $30/month, it must be garbage" | Free intro lessons prove quality. Let the content speak. |
| "Becker has 8,500 MCQs, you have 4,400" | Questions are AICPA Blueprint-aligned. At $30/mo you can supplement with NINJA and still pay a fraction of Becker. |
| "No one has heard of Slayer CPA" | Build trust through content marketing, Reddit presence, and early testimonials. Every brand started unknown. |
| "No video lectures" | Active learning (questions, practice exams, study frameworks) beats passive video. Research backs this. |
| "No pass guarantee" | At $30/mo the risk is near zero. Becker's "guarantee" gives $250 back on a $3,800 purchase — still a $3,550 loss. |

## Revenue Projections

| Scenario | Subscribers | Monthly Revenue | Annual Revenue |
|----------|-------------|-----------------|----------------|
| Baseline (1%) | 250 | $7,500 | $90,000 |
| Moderate (3%) | 750 | $22,500 | $270,000 |
| Strong (5%) | 1,250 | $37,500 | $450,000 |

Addressable market: ~25,000 self-funding candidates/year. Conservative — 150-hour reform expected to expand the pipeline.

Break-even estimate: At $200-500/mo ad spend, break-even is ~20-50 subscribers (easily achievable with organic + paid combined).

## Metrics to Track

| Metric | Tool | Target |
|--------|------|--------|
| Organic traffic | Google Search Console | 1,000 visits/month by month 3 |
| Free-to-paid conversion | Vercel Analytics + Stripe | 2-5% of site visitors |
| Subscriber churn | Stripe dashboard | Under 10%/month |
| CAC (paid channels) | Google/Reddit Ads | Under $30 |
| LTV | Stripe (avg subscription length x $29.99) | $180+ (6+ months avg) |
| Reddit referral traffic | UTM-tagged links | Track weekly |
| Search rankings | Google Search Console | Top 20 for 5+ target keywords by month 4 |

## Implementation Plan

### This Week (Pre-Launch)

| Day | Task | Owner |
|-----|------|-------|
| 1 | Verify Stripe is live (production keys, test checkout, webhook) | James |
| 1 | Set up Google Search Console, verify domain, submit sitemap | James |
| 1 | Set up Google Analytics or confirm Vercel Analytics is sufficient | James |
| 2 | Build `/blog` route with MDX support (reuse existing MDX infra) | Claude drafts, James reviews |
| 3 | Draft blog post #1: "Slayer CPA vs Becker: Full Comparison" | Claude drafts, James edits |
| 4 | Draft blog post #2: "How Much Does CPA Exam Prep Really Cost?" | Claude drafts, James edits |
| 5 | Create CPA study plan PDF (downloadable, free, no email gate) | Claude drafts, James reviews |

### Week 2-4 (Content Ramp)

| Task | Frequency |
|------|-----------|
| Publish 2 blog posts per week (following content calendar above) | 2x/week |
| Browse r/CPA daily, answer 2-3 questions per week | Daily |
| Monitor Google Search Console for indexing status | Weekly |
| Draft free study plan PDF and topic checklists | One-time |

### Month 2-3 (Paid Ads Start)

| Task | Details |
|------|---------|
| Set up Google Ads account, create first campaign | $5-10/day targeting "best CPA review course" |
| Set up Reddit Ads, create first promoted post | $50/month test budget |
| Review first month of blog traffic data | Adjust content calendar based on what ranks |
| Collect first subscriber testimonials | Email or in-app prompt after 30 days |

### Month 4-6 (Optimize)

| Task | Details |
|------|---------|
| Scale Google Ads winners, cut losers | Reallocate budget to top-performing keywords |
| Publish monthly pass rate / score release analysis posts | Timely content that gets shared |
| Add testimonials to homepage | Social proof section |
| Evaluate whether video content is needed | Based on competitor YouTube presence in search results |
| Review overall CAC, LTV, churn | Adjust strategy based on real numbers |
