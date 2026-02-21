-- Migration: Upgrade 9 moderate-scoring Advanced Lease Transactions questions
-- Fixes: short-stem, short-explanation, absolute-assurance, length-cuing
-- Target: all questions score 7+ after this migration

-- Q1082 [score:5] short-stem(11w) + short-expl(25w) → expand both
UPDATE questions SET
  stem = 'Crestline Properties leases office space from Apex Realty under a 10-year head lease, then subleases a portion to Birchwood Consulting for 5 years. The intermediate lessor (Crestline) must classify the sublease. Under ASC 842, how does an intermediate lessor classify a sublease?',
  explanation = 'Under ASC 842-10-25-38, the intermediate lessor classifies a sublease by reference to the right-of-use (ROU) asset arising from the head lease, not the underlying asset itself. The ROU asset serves as the underlying asset for sublease classification purposes. This means the sublease classification is based on the remaining lease term and payments of the head lease, not the fair value or useful life of the physical property. Choice A incorrectly uses the underlying asset rather than the ROU asset. Choice C is incorrect because head lease classification does not automatically determine sublease classification.'
WHERE id = 1082;

-- Q3273 [score:6] short-stem(5w) + length-cuing → expand stem, balance choices
UPDATE questions SET
  stem = 'Midway through a 7-year operating lease, Garrison Manufacturing exercises an option to add additional floor space to its leased facility — an option the lessee initially assessed as not reasonably certain to exercise. The lessee''s controller must determine whether to reassess the lease. Under ASC 842, lease reassessment is required when:',
  choices = '["Market interest rates change relative to the rate used at lease commencement","A significant event within the lessee''s control affects the assessment of lease options","The lessee''s common stock price changes by more than 10% during the reporting period","At every quarterly or annual reporting date regardless of any change in circumstances"]'
WHERE id = 3273;

-- Q3278 [score:6] short-stem(10w) + length-cuing → expand stem, balance choices
UPDATE questions SET
  stem = 'Thornton Industries signs a new 5-year equipment lease and pays $15,000 in broker commissions and $8,000 in legal fees that would not have been incurred without the lease. The controller classifies these as initial direct costs. Under ASC 842, initial direct costs of a lease are:',
  choices = '["Included in the ROU asset measurement for both operating and finance leases","Always expensed as incurred in the period the lease is signed","Capitalized only for finance leases and expensed for operating leases","Deducted from the lease liability to reduce future lease payments"]'
WHERE id = 3278;

-- Q3279 [score:5] short-stem(10w) + length-cuing → expand stem, balance choices
UPDATE questions SET
  stem = 'A CPA candidate studying ASC 842 is comparing the expense recognition patterns of operating and finance leases. For a finance lease, the lessee recognizes total expense that is higher in the early years and lower in later years. For a finance lease under ASC 842, the lessee recognizes:',
  choices = '["A single straight-line lease expense recognized evenly over the lease term","Variable lease expense based on actual usage of the underlying asset each period","Only cash lease payments as expense in the period they are paid","Separate amortization of the ROU asset and interest on the lease liability, producing a front-loaded pattern"]'
WHERE id = 3279;

-- Q3281 [score:6] length-cuing → balance choices
UPDATE questions SET
  choices = '["A new, separate lease recognized independently from the original agreement","An off-balance-sheet event with no adjustment to existing lease accounts","A partial termination requiring derecognition of a portion of the ROU asset","A remeasurement of the existing lease liability using a revised discount rate, with a corresponding ROU asset adjustment"]'
WHERE id = 3281;

-- Q3286 [score:6] length-cuing → balance choices
UPDATE questions SET
  choices = '["Full gain recognition on the excess of sale price over fair value in earnings","Recording the entire transaction at fair value with no separate liability component","A loss recognized by the seller-lessee for the amount exceeding fair value","Accounting for the excess as additional financing from the buyer-lessor, recorded as a financial liability"]'
WHERE id = 3286;

-- Q3392 [score:5] short-stem(10w) + absolute-assurance → expand stem, fix distractor
UPDATE questions SET
  stem = 'Ashford Manufacturing leases specialized equipment under a 5-year finance lease. The lease includes a residual value guarantee under which Ashford guarantees the equipment will be worth at least $50,000 at lease end. The controller expects the actual residual value will be $35,000. Under ASC 842, the residual value guarantee by a lessee:',
  choices = '["Is excluded from lease payments and has no effect on the lease liability","Is included in lease payments to the extent the lessee expects to owe under the guarantee","Is always included at the full maximum guaranteed amount regardless of expected residual value","Only affects the lessor''s accounting and is not recognized by the lessee"]'
WHERE id = 3392;

-- Q3393 [score:5] short-stem(7w) + length-cuing → expand stem, balance choices
UPDATE questions SET
  stem = 'Ridgeline Corp. hires a contractor to construct a warehouse on land owned by a third-party landlord. Ridgeline specifies the design, approves change orders, and will lease the completed building for 15 years. The question arises whether Ridgeline should be treated as the owner during construction. Under ASC 842, a build-to-suit lease arrangement:',
  choices = '["Always results in the lessee being treated as the accounting owner of the asset during construction","Is evaluated to determine whether the lessee controls the asset during construction to identify the accounting owner","Is prohibited under current GAAP and must be restructured as a purchase agreement","Is always treated as a financing arrangement with the lessee recording a construction loan liability"]'
WHERE id = 3393;

-- Q3394 [score:5] short-stem(9w) + length-cuing → expand stem, balance choices
UPDATE questions SET
  stem = 'A CPA candidate is reviewing the amortization requirements for right-of-use assets classified as finance leases. The candidate notes that the amortization period depends on whether the lease transfers ownership or includes a purchase option. The right-of-use asset for a finance lease is amortized:',
  choices = '["Over the lease term on a straight-line basis regardless of any purchase option","It is not amortized but is tested for impairment at each reporting date","Using the units-of-production method based on actual asset usage each period","Over the shorter of the asset''s useful life or the lease term, unless ownership transfers or a purchase option is reasonably certain"]'
WHERE id = 3394;
