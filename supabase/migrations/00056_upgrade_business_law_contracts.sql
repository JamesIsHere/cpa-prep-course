-- Migration: Upgrade 10 moderate-scoring Business Law: Contracts questions
-- Fixes: short-stem, absolute-assurance, length-cuing
-- Target: all questions score 7+ after this migration

-- Q201 [score:6] short-stem(10w) → expand stem with scenario
UPDATE questions SET
  stem = 'Dawson agrees to paint Henderson''s house for $5,000, and Henderson promises to pay upon completion. When Henderson later refuses to pay, Dawson sues for breach of contract. The court must first determine whether valid consideration existed. Which of the following is valid consideration in a contract?'
WHERE id = 201;

-- Q203 [score:5] short-stem(5w) → expand stem with scenario
UPDATE questions SET
  stem = 'Mercer Construction contracts with Ashford Properties to build a warehouse, but both parties incorrectly believe the soil conditions will support the planned foundation design. After ground testing reveals unstable soil that triples the foundation cost, Mercer seeks to rescind the contract. A contract is voidable if:'
WHERE id = 203;

-- Q495 [score:6] absolute-assurance → fix banned distractor
UPDATE questions SET
  choices = '["Be the newest model available on the market","Be fit for the ordinary purposes for which such goods are used","Come with a written manufacturer warranty covering defects","Be certified by an independent testing laboratory before sale"]'
WHERE id = 495;

-- Q595 [score:5] short-stem(10w) + length-cuing → expand stem, balance choices
UPDATE questions SET
  stem = 'A salesperson at Oakmont Electronics tells a customer that a laptop battery will last at least 12 hours on a single charge, and the customer relies on this statement when purchasing the laptop. Under UCC Article 2, an express warranty is created when:',
  choices = '["The seller makes an affirmation of fact, description, or sample that becomes part of the basis of the bargain","The buyer demands a warranty from the seller in a signed writing before the sale is completed","The sale price for the goods exceeds $500, triggering automatic warranty provisions under UCC Article 2","The seller holds a valid merchant''s license and operates a retail storefront"]'
WHERE id = 595;

-- Q2453 [score:6] short-stem(11w) → expand stem with scenario
UPDATE questions SET
  stem = 'On March 10, Thornton mails a written offer to sell commercial property to Kimball. On March 14, Kimball mails a letter of acceptance. The letter arrives at Thornton''s office on March 17. Under the mailbox rule, an acceptance sent by mail is effective:'
WHERE id = 2453;

-- Q2455 [score:5] short-stem(11w) + length-cuing → expand stem, balance choices
UPDATE questions SET
  stem = 'Waverly promises to donate $100,000 to fund a new wing at Greenfield University. Relying on this promise, the university hires an architect and begins construction. When Waverly later refuses to pay, the university sues. The doctrine of promissory estoppel allows enforcement of a promise when:',
  choices = '["The promisor made a clear promise that the promisee reasonably and detrimentally relied on, and enforcement is necessary to prevent injustice","The promise is supported by adequate legal consideration from the promisee","Both parties have signed a written agreement that satisfies the Statute of Frauds","The promise involves the sale of goods with a value exceeding $500 under UCC Article 2"]'
WHERE id = 2455;

-- Q2457 [score:4] short-stem(11w) + absolute-assurance → expand stem, fix distractor
UPDATE questions SET
  stem = 'A CPA candidate studying contract law encounters the Statute of Frauds and learns the mnemonic "MYLEGS" to remember the six categories of contracts that must be in writing to be enforceable. The mnemonic represents contracts involving:',
  choices = '["Money, Yearly contracts, Land, Estates, Goods over $500, and Suretyship","Mortgages, Yearly leases, Licenses, Employment, General partnerships, and Sales","Minors, Year-end contracts, Leases, Employment, Gifts, and Services","Marriage, contracts not performable within one Year, Land, Executor promises, Goods ($500+), and Suretyship"]'
WHERE id = 2457;

-- Q2458 [score:6] short-stem(5w) → expand stem with scenario
UPDATE questions SET
  stem = 'Blake and Harmon sign a detailed written contract for the sale of a commercial building. Blake later attempts to introduce testimony about an oral side agreement made before the contract was signed that contradicts the purchase price. The parol evidence rule prevents:'
WHERE id = 2458;

-- Q2461 [score:6] short-stem(7w) → expand stem with scenario
UPDATE questions SET
  stem = 'Foster enters a contract with Greenway Insurance under which Greenway agrees to pay $500,000 to Foster''s daughter, Quinn, upon Foster''s death. Quinn is not a party to the contract. An intended third-party beneficiary of a contract:'
WHERE id = 2461;

-- Q2473 [score:6] short-stem(5w) → expand stem with scenario
UPDATE questions SET
  stem = 'Stratton Corp. discovers that its supplier, Belmont Manufacturing, made material misrepresentations about the quality of steel used in a construction contract. Stratton seeks to undo the contract entirely and return both parties to their pre-contract positions. Rescission as a contract remedy:'
WHERE id = 2473;
