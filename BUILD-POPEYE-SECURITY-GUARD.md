# BUILD-POPEYE-SECURITY-GUARD.md — Copy & Paste This Into Your Chief of Staff
**Created by:** Utel USA × Aria Technology Group  
**Works with:** Google Antigravity, Claude / Claude Code, OpenAI Codex / ChatGPT, Cursor

---

## 🎯 How This Works (The 3-Step Day-1 Onboarding)

1. **Name Your Chief of Staff** (e.g., *"Dude"*, *"Monad"*, *"Atlas"*, *"Aria"*).
2. **Copy and paste the block below** to tell your Chief of Staff to build your **First Sub-Agent: Your "Popeye" Security Guard**.
3. **Watch "Popeye" run an immediate Security Audit of your workspace/system**, report back anything risky in plain English, and help you fix it with your approval!

---

## 📋 COPY & PASTE EVERYTHING IN THIS BOX INTO YOUR AI:

```markdown
Hey Chief of Staff! Today we are setting up our workspace under the **Utel USA × Aria Technology Group "AI-First, Human-Approved" Security Standard**.

Before we do any client work, I want you to do **three things in order**:

### STEP 1: Name My Chief of Staff & Build My "Popeye" Security Guard Sub-Agent
1. If I haven't given you a name yet, ask me what I want to call you (my **Chief of Staff**, e.g., "Dude", "Monad", "Atlas") and what I want to call my **Security Guard Sub-Agent** (default: **"Popeye"**).
2. Create a permanent sub-agent definition file at `subagents/popeye-security-guard.md` (and make sure both `AGENTS.md` and `CLAUDE.md` in this workspace point to it so every platform—Google Antigravity, Claude Code, Codex, and Cursor—enforces it automatically).

### STEP 2: Deploy "Popeye" Right Now to Check My System & Workspace
As soon as you create my Security Guard sub-agent, **deploy it immediately to run a read-only First-Run Security & Hygiene Check** of my current workspace and local environment. Have it check for:

1. **Exposed Secrets or Credentials (🔴 RED TIER):**
   - Look for any `.env` files, hardcoded API keys (`sk-`, `ghp_`, `xoxb-`), passwords, tokens, `.pem`/`.key` files, or credentials sitting unprotected in the workspace or Desktop/Downloads project folders.
2. **Git & File Leak Protection (`.gitignore` Audit):**
   - Check if this folder has a `.gitignore` that blocks `.env`, credentials, and raw customer telecom bills/CPNI (`*.pdf`, `*.xlsx`, `*.csv` in invoice folders) from ever being accidentally pushed to GitHub.
3. **Unprotected Customer Data / CPNI Hygiene:**
   - Check if raw customer bills, SSNs, ACH/banking forms, or internal Master Agent/TSB commission sheets are sitting mixed in with public/shared files.
4. **Guardrail Files Check (`AGENTS.md` & `CLAUDE.md`):**
   - Check whether `AGENTS.md` (for Antigravity / Codex / Cursor) and `CLAUDE.md` (for Claude / Claude Code) are installed and active in this workspace.

### STEP 3: Report Back to Me & Fix Issues (AI-First, Human-Approved!)
Give me a clean, plain-English **"Popeye Security Scorecard"** right now with three sections:
- 🟢 **What Looks Good & Safe**
- 🟡 **Warnings / Things We Should Clean Up**
- 🔴 **Critical Risks Found (if any)**

**Then, propose the exact fixes** (for example: creating/updating `.gitignore`, writing `AGENTS.md` and `CLAUDE.md`, moving raw customer bills into a git-ignored `private-client-files/` folder, or locking down exposed `.env` files) and ask for my **Human Approval** before applying the fixes!
```
