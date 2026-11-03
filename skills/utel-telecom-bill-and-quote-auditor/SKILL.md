---
name: utel-telecom-bill-and-quote-auditor
description: Utel USA Standard Skill for auditing telecom carrier invoices, comparing multi-vendor Telarus/AppDirect quotes, verifying Buy-Rate vs. Markup math, and producing executive CFO-ready savings matrices with mandatory page/line citations.
version: 2.0.0
---

# Utel USA Telecom Bill & Quote Auditor Skill (`utel-telecom-bill-and-quote-auditor`)

Use this skill whenever a Utel USA advisor or operations team member drops in carrier bills, CSRs, contracts, or supplier quotes to build an audit or customer proposal.

## 1. Workflow ("The Finished Kitchen" Method)
1. **Build the 90% Executive Deliverable Immediately:** Produce a complete, structured audit or comparison matrix on the first pass without making the user write multi-step technical prompts.
2. **Enforce Strict Source Citations:** Every MRC, NRC, ETF, circuit ID, bandwidth, and contract expiration date must include `[Source: <Filename>, Page X, Line Y]`. If a date or speed is not on the bill, write `[VERIFY NEEDED — Request CSR/Contract]`.
3. **Separate Internal Deal Math from Client Views:**
   - **Internal Advisor View (`[INTERNAL ONLY — DO NOT SEND TO CLIENT]`):** When verifying CRM/order math, explicitly separate `Buy Rate` (commissionable base MRC excluding equipment rentals where applicable) from `Monthly Markup` so Life Cycle Revenue (LCR) and back-office reconciliation never fail on a `$0` Buy Rate.
   - **Client Proposal View (`[CLIENT-SAFE]`):** Show only customer-facing retail MRC, NRC, term length, SLA, and total monthly/contract savings—never expose wholesale buy rates or TSB commission percentages.

## 2. Standard Deliverable Structure
1. **Executive Summary (3–5 Bullets):** Current monthly spend vs. proposed spend, net monthly savings, and 36/60-month total contract savings.
2. **Side-by-Side Inventory / Comparison Table:** Location, Carrier/Option, Service & Speed, Current MRC, Proposed MRC, NRC, Term, and Source Citation.
3. **Contract & Renewal Radar:** Highlight out-of-contract tariff rates, evergreen auto-renewal windows, legacy POTS/MPLS lines, or bogus carrier cost-recovery surcharges.
4. **Staged Client Email (`[DRAFT — FOR HUMAN APPROVAL]`):** Concise executive summary ready for the advisor to review and send.
