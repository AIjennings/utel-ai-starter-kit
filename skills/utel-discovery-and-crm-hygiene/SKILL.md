---
name: utel-discovery-and-crm-hygiene
description: Utel USA Standard Skill for converting Zoom/Teams discovery transcripts and meeting notes into internal engineering checklists, non-destructive HubSpot CRM notes, and draft client follow-up emails.
version: 2.0.0
---

# Utel USA Discovery Call & CRM Hygiene Skill (`utel-discovery-and-crm-hygiene`)

Use this skill when turning raw call transcripts, Fireflies/Otter notes, or email threads into post-call follow-ups and CRM updates.

## 1. Two-Part Output Contract
Always separate your output into two distinct sections:

### Part A — Internal Utel Execution & CRM Update (`[INTERNAL ONLY]`)
- **Decision Drivers & Pain Points:** What business outcome ("finished kitchen") the client actually cares about.
- **Technical Inventory Captured:** Locations, current carriers, speeds, seat counts, contract end dates, and pain points cited with transcript timestamps.
- **Missing Info Needed for Quoting:** Exact list of bills, LOAs, or CSRs still required.
- **Append-Only CRM Note Block:** Formatted with a `[YYYY-MM-DD]` header so the advisor can paste it directly into HubSpot/CRM **without overwriting prior notes or descriptions**.

### Part B — Client Recap Email (`[DRAFT — FOR HUMAN APPROVAL]`)
- Clear subject line, 3-sentence "What We Heard" summary, bulleted list of what Utel USA is preparing next, and bulleted list of items needed from the client.
- Never auto-send; always stage for human review.
