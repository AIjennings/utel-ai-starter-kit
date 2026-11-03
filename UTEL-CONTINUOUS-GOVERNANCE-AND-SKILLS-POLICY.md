# Utel USA Continuous AI Governance, HITL Gates & Managed Skills Policy (v2.0)
**Prepared for:** Tim Mackin, Jim Pixley & Utel USA Leadership  
**Architected by:** Andrew Jennings & Dominic Serra — Aria Technology Group (`aria.net` · `ariawave.tech`)  
**Effective Date:** November 2026  

---

## 1. Executive Summary: Static Rules Are Not Enough — Why Continuous Governance Wins

Giving employees a one-time `AGENTS.md` or `CLAUDE.md` file is a great **Day-1 starting line**, but AI models, carrier portals, CRM schemas, and security threats change every week.

Internally at **Aria Technology Group**, Andrew Jennings and Dominic Serra discovered that when employees or developers work with static instructions alone, three things inevitably happen:
1. **Unverified "Looks Good" Outputs:** AI agents (or operators using AI) claim a quote, campaign, CRM update, or audit is complete without proving the underlying math, links, or fields are actually accurate.
2. **Instruction Drift:** Everyone ends up with slightly different versions of rules on their laptop, and new company standards never reach their local AI.
3. **Blank-Page Friction:** Even with safety rules installed, employees still have to figure out *how* to get their AI to execute Utel-specific workflows (like calculating net2phone vs. FirstComm buy-rate/markup splits, auditing a 40-page AT&T bill, or staging a HubSpot deal without overwriting existing notes).

### Our Core Recommendation for Utel USA Going Forward:
Adopt Aria’s **3-Pillar Managed AI Governance Model**:
1. **Strong, Deterministic Human-in-the-Loop (HITL) Gates** (enforced before any external email, CRM write, or carrier portal action).
2. **Standardized Utel Company Skills (`SKILL.md` Playbooks)** (pre-built, Utel-specific workflows that employees’ AI Chiefs of Staff load automatically).
3. **Regular, Centrally Pushed Guardrail & Skill Updates** (delivered on a recurring cadence—just like software updates—so every Utel laptop stays synced to the latest security and operational standard).

---

## 2. Pillar 1: Strong Human-in-the-Loop (HITL) Gates (Battle-Tested by Andrew & Dominic)

Over the past week, Andrew and Dominic deployed upgraded multi-gate HITL verification pipelines across Aria's internal operations (`crm-campaign-launch-gate`, `muse_email_guard`, and `telecom-commission-and-order-reconciliation`). Here is how those exact gates translate into **Utel USA’s Company Policy**:

| Gate # | Gate Name | What the AI Chief of Staff & "Popeye" Security Guard Do | What the Human Must Approve (The Final 10%) |
| :--- | :--- | :--- | :--- |
| **Gate 1** | **Pre-Send Email & Thread Audit Gate** | Scans the latest email thread context so no one replies out-of-turn, strips internal Yellow-Tier data (TSB splits/margins), and stages the message as `[DRAFT — FOR HUMAN APPROVAL]`. | Human reviews the recipient list, checks the staged draft, and clicks **Send**. AI **never** auto-sends or schedules emails. |
| **Gate 2** | **Non-Destructive CRM & File Integrity Gate** | Prepares HubSpot / CRM updates in **Append-Only** mode (prepending/appending timestamped notes rather than overwriting `Description` fields) and **blocks all deletions** across Email, Drive, HubSpot, and local folders. | Human previews the exact proposed record update before importing or saving. Only a human can delete a record or file. |
| **Gate 3** | **Carrier & TSB Portal Cleanroom Gate** | Pulls serviceability, compares quotes across Telarus / AppDirect / CableFinder / carrier portals, and verifies exact **Buy-Rate vs. Monthly Markup** math and page/line citations (`[Source: Doc, p. X]`). | Human executes any portal login/MFA, order submission, LOA signature, or live routing change. |
| **Gate 4** | **Two-Layer Confidentiality & CPNI Firewall** | Automatically separates **Layer 1 (Client/Operational Safe Data)** from **Layer 2 (Confidential Partner Splits, Red-Tier Credentials, SSNs, ACH)**. Blocks any `.env` or raw bill from being shared externally. | Human confirms no `[VERIFY NEEDED]` or `[REDACTED]` flags remain unresolved before sharing externally. |
| **Gate 5** | **Dual-Sign-Off Gate for Mass Outbound / Campaigns** | Validates all links (`HTTP 200`), unsubscribe tokens, mobile formatting, and suppression lists before any bulk customer communication or marketing blast. | Requires explicit leadership sign-off on a live seed test before any mass send is scheduled. |

---

## 3. Pillar 2: Utel USA Company Skills (`skills/`) — Turning Policy into Instant Capability

In Google Antigravity, Claude Code, and OpenAI Codex, **`AGENTS.md` defines the boundaries (what not to break)**, while **`Skills` (`skills/<skill-name>/SKILL.md`) give the AI step-by-step mastery of Utel’s actual business processes**.

Instead of every rep or ops team member reinventing the wheel, Utel maintains an official catalog of **Utel Company Skills** in this repository (`skills/`):

1. **[`skills/utel-security-and-hitl-gate/SKILL.md`](./skills/utel-security-and-hitl-gate/SKILL.md)**  
   *The "Popeye" Pre-Flight Gate Skill:* Runs the mandatory 5-point security, credential, commission-shield, and citation check on any deliverable or workspace on demand.
2. **[`skills/utel-telecom-bill-and-quote-auditor/SKILL.md`](./skills/utel-telecom-bill-and-quote-auditor/SKILL.md)**  
   *The Telecom & Quote Audit Skill:* Standardizes how Utel audits carrier bills, calculates accurate Buy-Rate vs. Markup + Life Cycle Revenue (LCR), flags evergreen auto-renewal traps, and formats executive CFO-ready comparison tables with mandatory page/line citations.
3. **[`skills/utel-discovery-and-crm-hygiene/SKILL.md`](./skills/utel-discovery-and-crm-hygiene/SKILL.md)**  
   *The Discovery-to-Follow-Up & Safe CRM Skill:* Turns Zoom/Teams call transcripts into structured internal engineering checklists, append-only CRM notes, and `[DRAFT — FOR HUMAN APPROVAL]` client recap emails.

---

## 4. Pillar 3: Regular, Managed Delivery ("Over-the-Air" Updates Like Aria Runs Internally)

A policy only works if everyone actually has the latest version running on their machine. Just as Aria pushes continuous skill and guardrail updates across Andrew and Dominic’s workstations, Utel USA should adopt a **Managed Sync Cadence**:

### How Updates Are Delivered to the Utel Team:
1. **Single Canonical Source (GitHub + Google Drive Mirror):**
   - Every update to `AGENTS.md`, `CLAUDE.md`, or `skills/` is published simultaneously to the public GitHub repository (`AIjennings/utel-ai-starter-kit`) and the shared Google Drive folder.
2. **One-Command / Zero-Click Weekly Sync (`scripts/sync-utel-standards.ps1`):**
   - Team members can either run the 1-click updater script—or simply tell their AI Chief of Staff:  
     > *"Sync my Utel USA guardrails and company skills to the latest version."*
   - The updater automatically refreshes `%USERPROFILE%\.gemini\AGENTS.md` (Antigravity), `%USERPROFILE%\.codex\AGENTS.md` (Codex), `%USERPROFILE%\.claude\CLAUDE.md` (Claude Code), and installs the latest `skills/` without erasing the employee's personal Chief of Staff name!
3. **Version Stamp Verification (For Wednesday "AI Drive-By" Sessions):**
   - Every guardrail release carries a clear version stamp (e.g., `Utel-Aria Standard v2.0 — Nov 2026`).
   - At the start of any Wednesday **AI Drive-By**, Tim or Jim can have the team ask their AI:  
     > *"What version of the Utel USA guardrails and skills are you running?"*  
     In 5 seconds, leadership knows 100% of the team is on the current security standard.
