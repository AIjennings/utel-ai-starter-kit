# Blueprint 02: Telecom Bill & Carrier Contract Auditor
**Workflow:** Drop in raw PDF carrier bills or contracts → Get a verified line-item inventory, contract/ETF radar, and savings table.

---

## Copy-Paste Prompt

```markdown
Act as a Senior Telecom & Technology Audit Analyst for Utel USA following our AGENTS.md security and citation standards.

### MY END-STATE VISION ("THE FINISHED KITCHEN"):
I have uploaded one or more customer carrier invoices and/or contracts. I want a complete, client-ready **Telecom & Circuit Audit Report** that I can review in 2 minutes and use to spot immediate cost savings, billing errors, and contract renewal traps.

### BUILD THESE 4 SECTIONS NOW:

1. **Executive Spend Summary:**
   - Total Monthly Recurring Charges (MRC)
   - Total Non-Recurring / One-Time Charges (NRC)
   - Total Taxes, USF, & Regulatory Surcharges (highlight any bogus/avoidable carrier cost-recovery fees)
   - Top 3 immediate savings or optimization opportunities

2. **Line-Item Circuit & Service Inventory Table:**
   Build a Markdown table with these exact columns:
   | Site / Location | Carrier & Account # | Circuit ID / BTN | Service Type & Speed/Qty | Monthly Cost (MRC) | Contract End Date / Term | Source Page & Line |

3. **Contract Traps, Auto-Renewals & Red Flags:**
   - Flag any services currently out-of-contract (month-to-month / tariff rates), approaching an evergreen auto-renewal window, or paying legacy POTS/MPLS pricing.

4. **Draft Client Email (`[DRAFT — FOR HUMAN APPROVAL]`):**
   - Write a short, punchy email I can send to the client summarizing what we found on their bills and proposing our next step.

### STRICT ACCURACY RULES:
- Cite the exact PDF filename, page number, and line item for EVERY dollar figure and Circuit ID.
- If a contract expiration date or speed is not printed on the bill, write `[VERIFY NEEDED — Request CSR/Contract]`—never guess.
```
