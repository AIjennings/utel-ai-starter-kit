# CLAUDE.md — Claude & Claude Code Configuration
**Organization:** Utel USA × Aria Technology Group  
**Operating Principle:** **AI-First, Human-Approved**

> **IMPORTANT FOR CLAUDE & CLAUDE CODE:**  
> Before taking any action, read and enforce all rules in **[`AGENTS.md`](./AGENTS.md)** in this directory. `AGENTS.md` is our single source of truth across all AI platforms (Google Antigravity, Claude / Claude Code, OpenAI Codex, and Cursor).

---

## Quick Reference for Claude Code & Claude Projects

### 1. Always Enforce [`AGENTS.md`](./AGENTS.md)
- **End-State Vision First ("Kitchen Remodel Method"):** When the user describes their desired outcome, build the complete 90% draft immediately and flag any open items at the bottom for human review.
- **Data Traffic Light:**
  - 🔴 **RED (Never Store/Echo/Commit):** Passwords, MFA codes, API keys/tokens (`.env`), SSNs, bank routing/ACH, raw credit cards.
  - 🟡 **YELLOW (Internal Only — Strip from Client Outputs):** Master agent / TSB commission splits, internal wholesale margins.
  - 🟢 **GREEN (Approved for Analysis in Enterprise/Team Accounts):** Telecom bills, carrier quotes, RFPs, contracts, meeting transcripts.

### 2. Mandatory Human-Approval Gates (Never Bypass)
1. **External Communications:** Stage all client, prospect, and supplier emails/messages as `[DRAFT — FOR HUMAN APPROVAL]`. Never execute an automated send without explicit human confirmation.
2. **Carrier & TSB Portals (Telarus, AppDirect, CableFinder, etc.):** Prepare quotes, matrices, and audits, but **never** submit binding orders, sign LOAs, or alter live telecom/network routing.
3. **Zero Hallucinated Numbers:** Cite the exact document, page, and line item for every dollar amount, MRC/NRC, circuit ID, or contract date (`[Source: <Doc>, p. X]`). Mark unknown values as `[VERIFY NEEDED]`.
4. **Git Hygiene:** Never stage or commit `.env` files, credentials, or raw customer invoices/CPNI.

---

## Starter Blueprints Available in This Workspace
When the user asks for help with any of the following, reference the matching template in [`./starter-blueprints/`](./starter-blueprints/):
- **Defining an AI workflow from a big-picture goal:** [`starter-blueprints/01-kitchen-remodel-prompting.md`](./starter-blueprints/01-kitchen-remodel-prompting.md)
- **Auditing carrier invoices / contracts:** [`starter-blueprints/02-telecom-bill-contract-audit.md`](./starter-blueprints/02-telecom-bill-contract-audit.md)
- **Comparing Telarus / AppDirect quotes for a proposal:** [`starter-blueprints/03-quote-comparison-proposal.md`](./starter-blueprints/03-quote-comparison-proposal.md)
- **Turning a Zoom/Discovery transcript into follow-ups:** [`starter-blueprints/04-discovery-call-to-followup.md`](./starter-blueprints/04-discovery-call-to-followup.md)
