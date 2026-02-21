-- Migration: Upgrade 8 moderate-scoring Internal-Use Software and Cloud Computing questions
-- Fixes: short-expl, short-stem, length-cuing, missing citations, missing wrong-answer analysis
-- Target: all questions score 7+ after this migration

-- Q1069 [score:6] short-expl(29w) → expand explanation with citations + wrong-answer analysis
UPDATE questions SET
  stem = 'Ridgemont Corp. develops an internal-use inventory management system. During the project, the following costs were incurred: conceptual design and feasibility analysis $30,000; external coding by a contractor $200,000; internal developer salaries during application development $150,000; system testing and data conversion $50,000; user training after go-live $20,000. Under ASC 350-40, what is the total amount capitalized?',
  explanation = 'Under ASC 350-40-25, costs incurred during the application development stage are capitalized, including external coding ($200,000), internal developer salaries ($150,000), and testing ($50,000), totaling $400,000. Conceptual design ($30,000) is a preliminary project stage cost that must be expensed, and training ($20,000) is a post-implementation cost that must be expensed. Choice A ($450,000) incorrectly capitalizes the training costs. Choice D ($370,000) incorrectly expenses the testing costs, which are capitalizable during the application development stage.'
WHERE id = 1069;

-- Q1073 [score:6] short-expl(27w) → expand explanation with citations + wrong-answer analysis
UPDATE questions SET
  stem = 'Thornfield Industries signs a 5-year cloud hosting contract classified as a service contract (not a software license) with two 1-year renewal options that are reasonably certain to be exercised. During the application development stage equivalent, Thornfield incurs $350,000 in capitalizable implementation costs. Under ASC 350-40, what is the annual amortization expense?',
  explanation = 'Under ASC 350-40-35, capitalizable implementation costs for a cloud computing service contract are amortized over the term of the hosting arrangement, which includes the base contract term plus reasonably certain renewal periods: 5 + 1 + 1 = 7 years. Annual amortization = $350,000 / 7 = $50,000. Choice A ($70,000) incorrectly uses only the 5-year base term without including the renewal periods. Choice C ($58,333) uses 6 years, including only one renewal option instead of both. Choice D ($87,500) uses 4 years, which has no basis in the contract terms.'
WHERE id = 1073;

-- Q3246 [score:6] short-stem(11w) + length-cuing(25/93) → expand stem, balance choices
UPDATE questions SET
  stem = 'Ashford Financial Services is beginning development of a custom loan origination system. The project manager asks the controller how ASC 350-40 structures the accounting treatment across the project lifecycle. Under ASC 350-40, the three stages of internal-use software development are:',
  choices = '["Planning, coding, and testing — with all costs capitalized during the coding and testing phases","Research, development, and deployment — following the same framework as R&D under ASC 730","Initiation, execution, and closure — using the project management lifecycle as the accounting framework","Preliminary project stage, application development stage, and post-implementation/operation stage"]',
  explanation = 'Under ASC 350-40-25, the three stages are: (1) Preliminary project stage — conceptual formulation, evaluation of alternatives, determination of needed technology (costs expensed); (2) Application development stage — design, coding, installation, testing (costs capitalized); (3) Post-implementation/operation stage — training, maintenance, minor upgrades (costs expensed). Choice B is incorrect because ASC 730 (R&D) uses a different framework and does not apply to internal-use software. Choice A incorrectly includes "planning" as a capitalizable phase.'
WHERE id = 3246;

-- Q3249 [score:6] short-stem(10w) → expand with scenario + cite ASC 350-40
UPDATE questions SET
  stem = 'After Ridgemont Corp.''s custom inventory system goes live, the IT department incurs costs for user training workshops, routine bug fixes, and minor interface tweaks. The controller asks whether any of these costs can be capitalized. Under ASC 350-40, costs incurred during the post-implementation stage of internal-use software are:',
  explanation = 'Under ASC 350-40-25-9, post-implementation costs including training, maintenance, and minor modifications are expensed as incurred. Only costs that result in significant additional functionality (qualifying as upgrades or enhancements under ASC 350-40-25-10) are capitalized. The distinction depends on whether the modification results in additional functionality that was not part of the original design. Choice A is incorrect because blanket 3-year amortization does not apply — post-implementation costs are expensed, not capitalized. Choice C is incorrect because deferral until the next upgrade has no basis in ASC 350-40.'
WHERE id = 3249;

-- Q3251 [score:6] length-cuing(29/123) → balance choices, add scenario
UPDATE questions SET
  stem = 'Kensington Retail subscribes to a cloud-based point-of-sale system hosted entirely by the vendor. Kensington accesses the software through a web browser and has no ability to run the software on its own infrastructure or contract with another vendor to host it. The controller must determine whether this arrangement is a software license or a service contract. Under ASC 350-40, a cloud computing arrangement is classified as a service contract when:',
  choices = '["The customer takes physical possession of the software and installs it on its own servers","The customer does not take possession of the software and the arrangement does not meet software license criteria","The contract term exceeds one year and includes automatic renewal provisions","The vendor is a SaaS provider regardless of whether the customer can take possession of the software"]',
  explanation = 'Under ASC 350-40-15-6A, a hosting arrangement is a service contract when the customer does not have the ability to take possession of the software (i.e., run it on its own hardware or contract with another vendor to host it) without significant penalty, and the arrangement does not otherwise meet the criteria for a software license. Choice D is incorrect because the "SaaS" label alone does not determine the classification — the key test is whether the customer can take possession of the software.'
WHERE id = 3251;

-- Q3252 [score:5] short-stem(6w) + length-cuing(13/84) → expand stem, balance choices
UPDATE questions SET
  stem = 'Thornfield Industries'' custom ERP system entered production on July 1, 2025 after 18 months of development. The controller capitalized $2.4 million in development costs and must determine the appropriate amortization approach. Under ASC 350-40, capitalized internal-use software costs are amortized:',
  choices = '["Over the estimated useful life of the software, typically using the straight-line method","Over 40 years, consistent with the maximum amortization period for other intangible assets","Only when the software is sold, disposed of, or replaced by a newer system","Over the contractual license period only, regardless of the software''s expected operational life"]',
  explanation = 'Under ASC 350-40-35-1, capitalized internal-use software costs are amortized over the estimated useful life of the software on a straight-line basis, unless another systematic method better represents the pattern of economic benefit. Amortization begins when the software is substantially ready for its intended use. Choice B is incorrect because the 40-year cap applies to certain other intangibles under ASC 350, not internal-use software, which typically has a much shorter useful life. Choice C is incorrect because amortization begins when the software is ready for use, not when it is disposed of.'
WHERE id = 3252;

-- Q3261 [score:5] short-stem(11w) + length-cuing(15/62) → expand stem, balance choices
UPDATE questions SET
  stem = 'During the development of Ashford Corp.''s new human resources information system, the QA team spends three weeks running integration tests, user acceptance tests, and data migration validation before the system goes live. The controller asks whether these testing costs should be capitalized or expensed. Under ASC 350-40, testing costs during the application development stage of internal-use software are:',
  choices = '["Always expensed as incurred because testing is considered a quality assurance function, not development","Capitalized only if the tests pass successfully and the software is deployed without further modification","Capitalized because testing is a necessary part of the application development stage under ASC 350-40","Expensed unless the testing period exceeds one month, at which point the costs qualify for capitalization"]',
  explanation = 'Under ASC 350-40-25-2, testing during the application development stage is a necessary activity to ensure the software functions as designed, and these costs are capitalizable along with other application development stage costs (coding, installation, data conversion). Choice A is incorrect because ASC 350-40 explicitly includes testing as a capitalizable development activity. Choice B is incorrect because capitalization does not depend on test outcomes — the costs are capitalizable regardless of whether individual tests pass or fail during development.'
WHERE id = 3261;

-- Q3266 [score:6] short-stem(11w) + length-cuing(36/115) → expand stem, balance choices
UPDATE questions SET
  stem = 'Ridgemont Financial develops a mobile banking application using agile methodology with two-week sprints. Each sprint includes planning, coding, testing, and stakeholder feedback — activities that span multiple ASC 350-40 stages simultaneously. The controller struggles to determine which sprint costs to capitalize versus expense. Under ASC 350-40, agile software development methodologies create a challenge because:',
  choices = '["Agile projects cannot be capitalized under any circumstances due to their iterative structure","ASC 350-40 explicitly prohibits capitalization for any project not using a waterfall development approach","Agile development is always more expensive than waterfall, making capitalization impractical for most entities","The iterative nature of agile blurs the boundaries between preliminary, development, and post-implementation stages"]',
  explanation = 'Agile development uses iterative sprints that may include activities from multiple ASC 350-40 stages simultaneously — planning (preliminary), coding/testing (application development), and user feedback (post-implementation). This blurs the clear stage boundaries that ASC 350-40 assumes, requiring careful tracking to determine which costs within each sprint qualify for capitalization versus expense. Choice A is incorrect because agile projects can be capitalized — the entity must simply track costs by stage activity within each sprint. Choice B is incorrect because ASC 350-40 does not specify a required development methodology.'
WHERE id = 3266;
