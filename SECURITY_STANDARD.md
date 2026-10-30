# Behind-the-Scenes AI Security & Oversight Standard
**Prepared for:** Utel USA Team & Leadership  
**Co-Architected by:** Utel USA & Aria Technology Group  

---

## Why This Standard Exists (In Plain English)

When you remodel a kitchen, you don't need to know how to wire a 200-amp breaker panel yourself—you just need to know what you want the finished kitchen to look like, and trust that the wiring behind the drywall follows code so the house doesn't catch fire.

**Our goal is to let every team member move fast, experiment fearlessly, and get that "aha moment" with AI—knowing the safety wiring is already installed behind the scenes.**

---

## Pillar 1: The Safe "Walled Garden" (Where You Work)

The #1 behind-the-scenes risk with AI isn't the AI making a mistake—it's pasting company or customer data into a **free, personal consumer AI account** that uses your uploads to train its public model.

### The Standard:
1. **Use Approved Company Accounts Only:**
   - **Recommended Default IDE / Agent:** **Google Antigravity** (paired with this repository's [`AGENTS.md`](./AGENTS.md))
   - **Approved Models / Workspaces:** **Claude Team / Enterprise** (`@utelusa.com` SSO), **Google Workspace Enterprise (Gemini)**, or **ChatGPT Team / Enterprise** with **"Train on my data" turned OFF**.
2. **The Green / Yellow / Red Traffic Light:**

| Tier | What Data Belongs Here? | How You Handle It |
| :--- | :--- | :--- |
| 🟢 **GREEN**<br>*(Go Crazy)* | • Telecom & carrier bills (AT&T, Verizon, Lumen, Comcast, etc.)<br>• Telarus / AppDirect / CableFinder quote exports<br>• Customer RFPs, MSAs, SLAs, and contract redlines<br>• Zoom discovery call transcripts & email threads | **Upload freely** inside our approved company AI accounts. |
| 🟡 **YELLOW**<br>*(Internal Only)* | • Master agent / TSB commission splits & SPIFF tables<br>• Internal company financials or margin sheets<br>• Employee / HR evaluations | **Analyze internally only.** Always verify these numbers are stripped before sending a summary to a customer. |
| 🔴 **RED**<br>*(Never Paste)* | • Portal passwords (Telarus, AppDirect, carrier portals, CRM)<br>• 2FA / MFA security codes<br>• API keys, `.env` secrets, or private tokens<br>• Social Security Numbers (SSNs), ACH bank routing, or credit cards | **NEVER paste into any AI prompt or save into a shared project.** |

---

## Pillar 2: "AI-First, Human-Approved" (The 90/10 Rule)

We want you to be **AI-First** on every task—meaning before you spend two hours building a spreadsheet or writing a proposal from scratch, you hand the raw ingredients to the AI and describe the finished kitchen.

To make sure nothing ever goes sideways with a customer or carrier, we enforce a strict **90/10 Split**:
- **AI owns the first 90%:** Reading 60-page PDFs, extracting circuit IDs and contract end dates, matching quotes side-by-side, and writing the draft email or proposal.
- **You own the final 10% Approval Gate:**
  1. **Draft-Only External Comms:** AI never sends an email directly to a client or carrier rep. It gives you a draft; you review and click **Send**.
  2. **Prepare-Only Portal Work:** AI never clicks "Submit Order," signs an LOA, or triggers a number port (LNP). It prepares the package; you execute the final click.
  3. **Page & Line Citations:** Our [`AGENTS.md`](./AGENTS.md) and [`CLAUDE.md`](./CLAUDE.md) files force the AI to cite the exact page and line number for every dollar amount it pulls from a bill—so you can spot-check its math in 10 seconds.

---

## Pillar 3: Platform Setup Checklist (Admin & Team)

### For Individual Team Members (2-Minute Setup)
- [ ] Log into your AI tool using your company email (`@utelusa.com`), not a personal Gmail.
- [ ] **If using Google Antigravity, Cursor, or OpenAI Codex:** Drop [`AGENTS.md`](./AGENTS.md) and [`.gitignore`](./.gitignore) into your project folder.
- [ ] **If using Claude Code:** Drop **both** [`AGENTS.md`](./AGENTS.md) and [`CLAUDE.md`](./CLAUDE.md) into your project folder.
- [ ] **If using Claude.ai or ChatGPT on the web:** Create a Project, open **Project Instructions**, and paste the contents of [`AGENTS.md`](./AGENTS.md).

### For Leadership / Admins (Behind-the-Scenes Oversight)
- [ ] Verify **Model Training Opt-Out** is locked ON at the organization level (Claude Team/Enterprise Admin Console / Google Workspace Admin / OpenAI Team settings).
- [ ] Enforce **SSO + MFA** on all company AI seats.
- [ ] Host shared **Starter Blueprints** ([`starter-blueprints/`](./starter-blueprints/)) so every rep starts with proven, security-hardened prompts rather than a blank screen.
