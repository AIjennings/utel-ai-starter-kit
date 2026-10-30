# Utel USA × Aria Technology Group: AI Starter Kit & Security Standard

> **"AI-First, Human-Approved."**  
> Describe the finished kitchen (your end-state vision), let your AI Chief of Staff do 90% of the heavy lifting, and keep a human hand on the final 10% approval switch.

Welcome to the official **Utel USA AI Starter Kit & Security Standard**, co-architected by **Utel USA** and **Aria Technology Group**.

Whether you use **Google Antigravity** (recommended default), **Claude / Claude Code**, **OpenAI Codex / ChatGPT**, or **Cursor**, this repository gives every team member the exact **copy-paste Markdown files** to:
1. Set up their **AI Chief of Staff** (e.g., *"Dude"*, *"Monad"*, *"Atlas"*).
2. Build their first sub-agent: **"Popeye" (their AI Security Guard)**, who immediately scans their workspace/system for security risks, reports back in plain English, and fixes them.
3. Enforce permanent **AI-First, Human-Approved Guardrails** (`AGENTS.md` + `CLAUDE.md`) across every platform.

---

## ⚡ Follow These 3 Steps to Get Started Today

| Step | File to Open & Copy-Paste | What It Does |
| :--- | :--- | :--- |
| **Step 1: Build Your Chief of Staff & "Popeye" Security Guard** | **[`BUILD-POPEYE-SECURITY-GUARD.md`](./BUILD-POPEYE-SECURITY-GUARD.md)** | Tells your Chief of Staff to create your **"Popeye" Security Guard sub-agent**, immediately scan your workspace/system for exposed keys, missing `.gitignore` rules, or unprotected customer files, report back, and fix them. |
| **Step 2: Lock In Your Permanent Guardrails** | **[`AGENTS.md`](./AGENTS.md)** & **[`CLAUDE.md`](./CLAUDE.md)** | The universal guardrail files. **Antigravity, Codex, and Cursor** read `AGENTS.md`; **Claude Code** reads both `CLAUDE.md` and `AGENTS.md`. |
| **Step 3: Use the "Kitchen Remodel" Prompt Blueprints** | **[`starter-blueprints/`](./starter-blueprints/)** | Copy-paste templates for describing the **Finished Kitchen (End-State Vision)** on telecom bill audits, Telarus/AppDirect quote comparisons, and discovery call follow-ups. |

---

## 📦 Repository Contents

```text
utel-ai-starter-kit/
├── README.md                                 # Quick-start guide & 3-step onboarding
├── BUILD-POPEYE-SECURITY-GUARD.md            # STEP 1: Copy-paste prompt to build "Popeye" & audit your system
├── COPY-PASTE-ONBOARDING.md                  # Combined Chief of Staff + Security Guard onboarding prompt
├── AGENTS.md                                 # STEP 2: Universal Guardrails (Antigravity, Codex, Cursor, Web Projects)
├── CLAUDE.md                                 # STEP 2: Claude / Claude Code entrypoint (pairs with AGENTS.md)
├── SECURITY_STANDARD.md                      # Behind-the-Scenes Security Standard (Traffic Light + 90/10 HITL Gate)
├── subagents/
│   └── security-guard-popeye.md              # Sub-agent spec for "Popeye" (the 4-point pre-flight & system inspector)
├── starter-blueprints/                       # STEP 3: "Kitchen Remodel" End-State Prompt Blueprints
│   ├── 01-kitchen-remodel-prompting.md       # Tim Mackin's End-State Vision Method ("Describe the Finished Kitchen")
│   ├── 02-telecom-bill-contract-audit.md     # Carrier Invoice, CPNI-Safe Audit & Savings Matrix Blueprint
│   ├── 03-quote-comparison-proposal.md       # Telarus / AppDirect Multi-Vendor Proposal & Executive Summary
│   └── 04-discovery-call-to-followup.md      # Zoom Transcript -> Client Recap Draft + Internal Action Items
├── scripts/
│   ├── install-guardrails.ps1                # 1-command Windows installer (copies AGENTS.md, CLAUDE.md, .gitignore)
│   └── install-guardrails.sh                 # 1-command Mac/Linux installer
├── .cursorrules                              # Automatic pointer to AGENTS.md for Cursor users
└── .gitignore                                # Blocks .env, credentials, raw customer bills, and CPNI from git commits
```

---

## 🛡️ Behind the Scenes: What Your Guardrails Enforce

1. **The Green / Yellow / Red Data Traffic Light:**
   - 🟢 **GREEN (Approved inside Company Enterprise/Team AI):** Carrier bills, Telarus/AppDirect quotes, RFPs, contracts, meeting transcripts.
   - 🟡 **YELLOW (Internal Only — Strip from Client Views):** Master agent commission splits, SPIFFs, wholesale margins.
   - 🔴 **RED (Never Paste or Commit):** Passwords, MFA/2FA codes, API keys (`.env`), SSNs, bank routing/ACH, credit cards.
2. **The 90/10 "AI-First, Human-Approved" Gate:**
   - AI does 90% of the heavy lifting; humans own the final 10% commit.
   - External emails are always staged as `[DRAFT — FOR HUMAN APPROVAL]`.
   - Carrier portal orders and LOAs are **never** auto-submitted.
   - Every dollar figure or contract date extracted from a bill must cite the **exact page and line number** (`[Source: Doc, p. X]`).

---

## 🤝 Maintained By
* **Utel USA** — Senior Technology Advisory (`utelusa.com`)
* **Aria Technology Group (AriaWave)** — AI Strategy, Security & Agentic Engineering (`aria.net` · `ariawave.tech`)
