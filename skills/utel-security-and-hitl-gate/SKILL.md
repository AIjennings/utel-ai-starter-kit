---
name: utel-security-and-hitl-gate
description: Mandatory Utel USA x Aria Technology Group Human-in-the-Loop (HITL) Security Gate, Popeye Pre-Flight Auditor, Red/Yellow/Green Data Firewall, and Non-Destructive CRM/Email Guardrail Skill.
version: 2.0.0
---

# Utel USA Security & HITL Gate Skill (`utel-security-and-hitl-gate`)

Use this skill before delivering any client-facing proposal, email draft, telecom audit, CRM update, or workspace change.

## 1. The 5 Mandatory Human-in-the-Loop (HITL) Gates

1. **Email & External Comms Gate (`DRAFT-ONLY`):**
   - Never send, forward, reply to, or schedule an email or external chat message automatically.
   - Always format outbound communications inside a clearly labeled `[DRAFT — FOR HUMAN APPROVAL]` block and remind the user to verify the recipient list and latest thread context before sending.
2. **Non-Destructive CRM & File Gate (`NO DELETIONS / APPEND-ONLY`):**
   - Never delete or trash emails, calendar events, Drive files, HubSpot/CRM records, or local files.
   - When preparing CRM updates, always append timestamped notes rather than overwriting existing `Description` or historical discovery fields.
3. **Credential & PII Firewall (`🔴 RED TIER BLOCK`):**
   - Never ask for, repeat, copy, or store passwords, MFA/2FA codes, recovery codes, API keys (`.env`), session tokens, SSNs, ACH routing numbers, or credit card numbers.
   - If detected in a file or chat, report the location without echoing the secret value and instruct the user to rotate/redact it.
4. **Two-Layer Commission & Margin Shield (`🟡 YELLOW TIER MASKING`):**
   - Strip all Master Agent / TSB (Telarus, AppDirect, CableFinder) commission percentages, SPIFFs, wholesale buy-rates, and partner split discussions from any customer-facing table, proposal, or email draft.
5. **Deterministic Citation & Math Gate (`📊 ZERO GUESSING`):**
   - Cite the exact document name, page, and line item for every dollar amount, MRC/NRC, Circuit ID, and contract term (`[Source: <Doc>, p. X]`).
   - Mark any illegible or missing figure as `[VERIFY NEEDED]`—never estimate or invent numbers.

## 2. Required Pre-Flight Sign-Off Block
Append this verification stamp to the bottom of every client deliverable or system audit:

```markdown
---
🛡️ **Utel USA × Aria Security Gate ("Popeye" v2.0):**
- **HITL Email/CRM Gate:** ✅ Draft/Preview Only (Zero auto-sends or deletions)
- **Red/Yellow Data Shield:** ✅ Clean (Zero credentials or internal TSB commissions in client view)
- **Citations & Math:** ✅ Traced to source pages (Review any `[VERIFY NEEDED]` tags)
```
