# Slayer CPA — Marketing Plan

## Website Copy Ideas

Taglines and text blocks for use on marketing pages, landing pages, and the homepage.

| #  | Copy                                                                                            | Placement   |
|----|-------------------------------------------------------------------------------------------------|-------------|
| 1  | New Questions Every Week                                                                        | Homepage    |
| 2  | Active Support Staff — Email Replies Within 12 Hours                                            | Homepage    |
| 3  | Find an error in a question? If it's valid, get a free month. If not, get a thoughtful response | Homepage    |
| 4  | Not finding a good explanation - I reccomend AI                                                 | Homepage    |

## Mascot

Need a mascot image for the brand. TBD — style, character, where it appears on the site.

## Positioning

> Structured understanding for $29.99/month. Mental models first, deep lessons second, surgical practice third.

Slayer CPA is a full-scope CPA prep course built around a learning architecture that competitors don't offer: concept maps and decision trees that teach you *how to think about* problems, detailed lessons that fill in the specifics, and a 5,000+ question bank mapped to specific AICPA Blueprint topics so you can drill exactly where you're weak.

The brand is faceless — the product and method speak for themselves.

## Value Proposition

The real differentiator isn't just price — it's the learning method:

1. **Mental Models First** — Concept maps, decision trees, and flowcharts that build structured frameworks for approaching problems. This is what expensive tutors provide and what video lectures skip.
2. **Deep-Dive Lessons** — Once you have the mental structure, detailed lessons fill in the specifics within that framework. Text-based, example-heavy, no filler.
3. **Surgical Question Practice** — 5,000+ questions mapped to specific AICPA Blueprint areas. Drill your weak spots precisely instead of churning through random question sets.
4. **Downloadable Study Frameworks** — PDF reference sheets (concept maps, decision trees, formula sheets, mnemonics) for every section. Print them, mark them up, carry them to the exam center.

**The pitch:** "Other courses sell you video lectures to watch. Slayer CPA gives you the mental scaffolding to *think through* unfamiliar problems on exam day — then 5,000 questions to prove you can."

## Market Context

### Competitor Pricing

| Provider       | Package       | Price            | Access         |
|----------------|---------------|------------------|----------------|
| Becker         | Advantage     | $2,499           | 24 months      |
| Becker         | Pro           | $3,799           | Unlimited      |
| UWorld Roger   | Elite         | $2,299           | Until pass     |
| Gleim          | Premium       | $2,999           | Unlimited      |
| Surgent        | Ultimate Pass | $1,999           | Until pass     |
| NINJA CPA      | Monthly       | $67-87/month     | Month-to-month |
| **Slayer CPA** | **Monthly**   | **$29.99/month** | **Month-to-month** |

Slayer CPA is 55-92% cheaper than every competitor. A full year costs $359.88 vs. $2,499+ at Becker. NINJA (the only other monthly option) is 2-3x more expensive.

### Target Audience

- ~74,000 candidates sit for the CPA exam annually; ~27,000 are new each year
- 30-40% self-funding (no employer sponsorship) = 22,000-30,000 addressable candidates
- Entry-level firm staff, career changers, small-firm employees, international candidates
- Age 22-30, cost-conscious, often carrying student debt
- 150-hour reform (24+ states) is expanding the pipeline with candidates who lack employer sponsorship

### Where Candidates Discover Prep Resources

| Channel                         | Reach              | Role                                             |
|---------------------------------|--------------------|--------------------------------------------------|
| r/CPA (Reddit)                  | ~105,000 members   | Primary purchasing decision channel              |
| r/Accounting (Reddit)           | ~1,200,000 members | Broad professional community                     |
| YouTube                         | 500K+ per channel  | Free content discovery (Accounting Stuff, etc.)  |
| Another71 Forum                 | 600,000+ posts     | Dedicated CPA exam forum since 2009              |
| TikTok/Instagram                | Growing            | #CPAExam, #StudyTok, short-form study content    |
| Facebook Groups                 | Thousands          | Section-specific CPA Exam Club groups            |
| Comparison/review sites         | High intent        | "Best CPA review 2026" search results            |

## Strategy

### Pre-Launch Checklist (Completed 2026-02-20)

All pre-launch items are done:

1. ~~**Verify Stripe is live**~~ — production keys in Vercel, real checkout tested, webhook confirmed, price updated to $29.99/month
2. ~~**Set up Google Search Console**~~ — slayer-cpa.com verified, sitemap.xml submitted (17 pages discovered)
3. ~~**Set up Google Analytics (GA4)**~~ — Vercel Analytics confirmed active (@vercel/analytics in layout)
4. ~~**Verify domain and SSL**~~ — www.slayer-cpa.com resolves correctly with HTTPS

### Phase 1: Reddit-First Launch (Weeks 1-8)

**Goal:** Build Reddit credibility, create landing page content, start Reddit Ads early.

**Budget:** $100-200/month on Reddit Ads starting week 3-4

**Key insight from research:** Blog SEO won't drive traffic for 3-6 months (new domain sandbox effect). Reddit organic is the highest-leverage free channel — 105K members on r/CPA who are actively studying and asking "what course should I use?" every day. Reddit Ads are dramatically cheaper than Google Ads ($0.50-$1.50 CPC vs $6-$15 CPC).

#### Reddit Organic (#1 Priority)

This is the primary growth channel. See `docs/reddit-guide.md` for the full engagement playbook.

- **Days 1-10:** Pure value — answer 2-3 questions/day on r/CPA and r/Accounting. Zero product mentions. Build karma and credibility.
- **Days 11-20:** Establish expertise — post study tips, section strategy breakdowns. Continue helping. Still no product mentions.
- **Days 21-30:** Soft introduction — mention Slayer CPA naturally when someone asks for course recommendations. Always honest about what it is and isn't.
- **Day 31+:** Maintain 90/10 ratio (90% helpful content, 10% product mentions). Share blog posts when genuinely relevant.

**Target:** 300+ karma, 5+ natural product mentions in relevant threads by end of month 1. Track referral traffic via UTM links.

#### Reddit Ads (#1 Paid Channel — Start Week 3-4)

Start Reddit Ads much earlier than originally planned. They're the best-value paid channel for this audience.

- **Budget:** $100-200/month ($3-7/day)
- **Targeting:** r/CPA and r/Accounting subscribers
- **Format:** Promoted posts (look organic, not banner ads)
- **Creative angles:**
  - Method-first: "CPA prep built on mental models: concept maps → deep lessons → targeted practice. $29.99/month."
  - Price comparison: "Full CPA exam prep for $29.99/month. 96 lessons. 5,000+ questions. All 6 sections."
  - Problem-aware: "Tired of re-watching lectures? Try structured study: frameworks that teach you how to think through problems."
- **Landing pages:** Blog comparison posts (Becker, Surgent) for competitor-aware traffic; homepage for general awareness
- **Expected CPC:** $0.50-$1.50 (vs $6-$15 on Google)
- **Target CAC:** Under $15 (0.5 months of subscription revenue)

#### Blog Content (Landing Pages, Not Traffic Drivers)

Blog posts serve as landing pages for Reddit Ads and organic Reddit shares — not as primary traffic drivers (SEO takes 3-6 months on a new domain).

**Content calendar:**

| Week | Post                                           | Type       | Status    | Purpose                                    |
|------|-------------------------------------------------|------------|-----------|-------------------------------------------|
| 1    | Slayer CPA vs Becker: Full Comparison          | Comparison | Published | Ad landing page, Reddit answer link        |
| 1    | How Much Does CPA Exam Prep Really Cost?       | Guide      | Published | SEO long-term, Reddit resource share       |
| 2    | Slayer CPA vs Surgent: Which Is Better?        | Comparison | Draft     | Ad landing page for Surgent-aware traffic  |
| 2    | Which CPA Section Should You Take First?       | Guide      | Draft     | Shareable in r/CPA "which section" threads |
| 3    | Slayer CPA vs NINJA CPA Review                 | Comparison |           | Key competitor for monthly subscribers     |
| 3    | CPA Exam Study Plan: 12-Month Schedule         | Guide      |           | Lead magnet, Reddit share, SEO             |
| 4    | Best CPA Review Courses 2026 (Ranked)          | Roundup    |           | High-intent SEO, ad landing page           |
| 4    | CPA Exam Pass Rates by Section (Updated)       | Data       |           | Shareable data, Reddit resource            |
| 5    | Is Becker Worth It? An Honest Look             | Opinion    |           | Captures "is Becker worth it" search       |
| 5    | FAR Topic Guide: What You Need to Know         | Guide      |           | Section-specific, Reddit helpful content   |
| 6    | CPA Exam for Under $200: Complete Guide        | Guide      |           | Price-sensitive audience, Reddit share     |
| 6    | AUD Topic Guide: What You Need to Know         | Guide      |           | Section-specific content                   |
| 7    | 150-Hour Rule Reform: State-by-State Tracker   | Reference  |           | Timely, shareable, SEO                     |
| 7    | REG Topic Guide: What You Need to Know         | Guide      |           | Section-specific content                   |
| 8    | CPA vs CMA vs CFA: Which Credential?           | Comparison |           | Broad audience, r/Accounting relevant      |
| 8    | How to Pass FAR on Your First Try              | Guide      |           | High-intent, Reddit shareable              |

Comparison posts are highest leverage — they serve as landing pages for Reddit Ads and capture candidates actively comparing courses.

#### Comparison Site Outreach (New Channel)

CPA review comparison sites rank highly in Google for "best CPA review course" type searches. Getting listed drives qualified traffic.

- **Target sites:** CPA Exam Guy, I Pass the CPA Exam, CPA Review for Free, Crush the CPA Exam
- **Approach:** Email the site owner with a pitch: "We're a new monthly CPA prep at $29.99/month with 96 lessons and 5,000+ questions across all 6 sections. Happy to provide a review account."
- **Timeline:** Start outreach in week 3-4 after blog content is live
- **Cost:** Free review accounts (negligible cost)

#### Free Content Lead Gen

The site already has free intro lessons for every section. Additional free assets:

- Downloadable CPA exam study plan template (PDF) — completed
- Section-by-section topic checklist (PDF)
- "CPA Exam Quick Start Guide" blog post series
- Sample quiz (10 questions, no signup required) on landing pages

No email gating for now — keep the free content truly free to maximize reach. Email capture can come later when there is traffic to convert.

### Phase 2: Growth (Months 2-4)

**Goal:** Scale Reddit Ads, add email capture, build social proof. Begin SEO traction.

**Budget:** $200-400/month on Reddit Ads

#### Scale Reddit Ads

- Increase budget on winning ad creatives
- Test new angles: testimonial-style (once available), section-specific ads ("Studying for FAR?")
- A/B test landing pages: homepage vs comparison post vs dedicated landing page
- Target expansion: r/AccountingStudents, accounting-adjacent subreddits

#### Google Ads (Deprioritized — Small Test Only)

Google Ads CPC for CPA prep keywords runs $6-$15. At $29.99/month, the math is tough:
- $10 CPC × 20% conversion = $50 CAC = 1.7 months of revenue just to break even
- Only viable for very high-intent, long-tail keywords

**If testing:** $50-100/month max, targeting only:
- "cheapest CPA prep course" (low competition)
- "CPA prep under $50" (low competition)
- "monthly CPA review course" (very specific)
- Brand terms: "slayer CPA" (defensive, will be cheap)

Do not bid on broad terms like "CPA review course" or "best CPA prep" — the big players own those and CPCs are $10+.

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

### Phase 3: Optimize (Month 4-6)

**Goal:** Double down on what works, cut what doesn't. SEO should start producing.

- Review Reddit Ads performance — scale winners, cut losers
- Review Google Ads test — likely kill if CAC is too high
- If organic blog traffic is growing, increase post frequency
- Evaluate comparison site listings — are they driving traffic?
- Review overall CAC, LTV, churn — adjust strategy based on real numbers
- Consider video content if competitors' YouTube presence is dominating search results
- Explore CPA score release cycle timing for ad spend spikes (candidates who fail look for new prep immediately)

### Phase 4: Scale (Month 6+)

**Goal:** Mature channels, expand reach.

- Revisit Google Ads with better data on keyword conversion
- Consider affiliate partnerships with accounting professors or study group admins
- Explore YouTube (faceless, screen-recorded explainers) if search results demand it
- Scale Reddit presence to include r/AccountingStudents, r/FinancialCareers
- Build referral program (subscriber invites friend, both get discount)

## Handling Objections

| Objection                                      | Counter                                                                                         |
|------------------------------------------------|-------------------------------------------------------------------------------------------------|
| "If it's $30/month, it must be garbage"        | Free intro lessons prove quality. The method is the differentiator: structured mental models → deep lessons → surgical practice. |
| "Becker has 8,500 MCQs, you have 5,000"        | Questions are AICPA Blueprint-mapped for targeted drilling. At $30/mo you can supplement with NINJA and still pay a fraction. |
| "No one has heard of Slayer CPA"               | Build trust through Reddit helpfulness, blog content, and early testimonials. Every brand started unknown. |
| "No video lectures"                            | Active learning (mental models, targeted questions, practice exams) beats passive video. Research backs this. |
| "No pass guarantee"                            | At $30/mo the risk is near zero. Becker's "guarantee" gives $250 back on a $3,800 purchase — still a $3,550 loss. |
| "No adaptive learning like Surgent"            | You know your weak areas better than an algorithm. Our blueprint mapping lets you drill exactly where you need to. |

## Revenue Projections

| Scenario          | Subscribers | Monthly Revenue | Annual Revenue |
|-------------------|-------------|-----------------|----------------|
| Baseline (1%)     | 250         | $7,500          | $90,000        |
| Moderate (3%)     | 750         | $22,500         | $270,000       |
| Strong (5%)       | 1,250       | $37,500         | $450,000       |

Addressable market: ~25,000 self-funding candidates/year. Conservative — 150-hour reform expected to expand the pipeline.

Break-even estimate: At $200-400/mo ad spend, break-even is ~10-15 subscribers (easily achievable with Reddit organic + ads combined).

## Metrics to Track

| Metric                  | Tool                           | Target                                  |
|-------------------------|--------------------------------|-----------------------------------------|
| Reddit referral traffic | UTM-tagged links               | 500+ clicks/month by month 2            |
| Reddit Ads CPC          | Reddit Ads dashboard           | Under $1.50                             |
| Reddit Ads CTR          | Reddit Ads dashboard           | Above 0.5%                              |
| Free-to-paid conversion | Vercel Analytics + Stripe      | 2-5% of site visitors                   |
| Subscriber churn        | Stripe dashboard               | Under 10%/month                         |
| CAC (all channels)      | Manual calculation             | Under $15                               |
| LTV                     | Stripe (avg length x $29.99)   | $180+ (6+ months avg)                   |
| Organic traffic         | Google Search Console          | 500 visits/month by month 3             |
| Search rankings         | Google Search Console          | Top 20 for 5+ keywords by month 4       |
| Comparison site traffic | UTM-tagged links               | Track monthly                           |
| Blog post engagement    | Vercel Analytics               | Average 2+ min time on page             |

## Implementation Plan

### This Week (Pre-Launch) — Completed 2026-02-20

All pre-launch tasks finished on launch day.

| Day | Task                                                              | Status |
|-----|-------------------------------------------------------------------|--------|
| 1   | Verify Stripe is live (production keys, test checkout, webhook)   | Done   |
| 1   | Set up Google Search Console, verify domain, submit sitemap       | Done   |
| 1   | Set up Google Analytics or confirm Vercel Analytics is sufficient  | Done   |
| 2   | Build `/blog` route with MDX support (reuse existing MDX infra)   | Done   |
| 3   | Draft blog post #1: "Slayer CPA vs Becker: Full Comparison"      | Done   |
| 4   | Draft blog post #2: "How Much Does CPA Exam Prep Really Cost?"   | Done   |
| 5   | Create CPA study plan PDF (downloadable, free, no email gate)     | Done   |

### Week 2 (Content + Reddit Start)

| Task                                                             | Frequency  | Status  |
|------------------------------------------------------------------|------------|---------|
| Create Reddit account, start browsing r/CPA and r/Accounting     | Day 1      |         |
| Review, edit, and publish blog post #3: "Slayer CPA vs Surgent"  | One-time   | Drafted |
| Review, edit, and publish blog post #4: "Which CPA Section First"| One-time   | Drafted |
| Answer 2-3 questions/day on r/CPA (pure value, no product)       | Daily      |         |
| Monitor Google Search Console for indexing status                 | Weekly     |         |

### Week 3-4 (Reddit Ads + Continued Organic)

| Task                                                             | Details                              |
|------------------------------------------------------------------|--------------------------------------|
| Set up Reddit Ads account, create first campaign                 | $3-7/day targeting r/CPA subscribers |
| Publish 2 blog posts per week (following content calendar)       | Comparison + guide pairs             |
| Continue Reddit organic engagement (still mostly value-only)      | 2-3 comments/day                     |
| Start comparison site outreach (email 2-3 sites)                 | Free review accounts                 |
| Draft free section topic checklists (PDF)                        | One-time asset                       |

### Month 2-4 (Scale + Optimize)

| Task                                                             | Details                              |
|------------------------------------------------------------------|--------------------------------------|
| Scale Reddit Ads on winning creatives                            | Increase to $200-400/month           |
| Small Google Ads test (long-tail keywords only)                  | $50-100/month max                    |
| Collect first subscriber testimonials                            | Email prompt after 30 days           |
| Add testimonials section to homepage                             | Social proof                         |
| Add email capture on blog                                        | Free tier (Buttondown/Mailchimp)     |
| Review all channel performance, cut losers                       | Monthly review                       |
