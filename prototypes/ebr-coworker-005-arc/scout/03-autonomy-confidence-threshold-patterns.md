# Per-section / per-item autonomy or confidence-threshold configuration — named products

## Gmail Filters [CS: HIGH]
- Each rule = one discrete condition+action pair — not a single global toggle.
- Conditions: sender, subject/body keywords, attachment presence/size, recipient.
- Boolean combination supported: AND (default across fields), plus OR/NOT/parentheses
  for refined logic.
- Actions: archive, label, delete, star, mark read, forward.
- https://support.google.com/mail/answer/6579?hl=en

## Zapier "Human in the Loop" [CS: HIGH]
- Pauses a workflow at a specific named step, not the whole workflow.
- "Request Approval" action routes to designated reviewer(s), who can approve,
  decline, or edit the submitted data before the automation continues.
- Configured per-step — different steps in the same workflow can have different
  review requirements.
- https://help.zapier.com/hc/en-us/articles/38731463206029-Request-approval-to-keep-your-workflow-running-with-Human-in-the-Loop
- https://zapier.com/blog/human-in-the-loop-guide/

## GitHub Copilot Agent Mode [CS: HIGH]
- `github.copilot.chat.agent.terminal.allowList` / `.denyList` settings.
- Allowlist approach: specific safe commands (e.g. `git status`, `git log`) run
  without manual approval; everything else prompts.
- Separate full-auto-approve toggle exists, but turning it on disables the deny list
  entirely — named tradeoff in GitHub's own community discussion thread.
- https://github.com/orgs/community/discussions/167487
- https://4sysops.com/archives/new-in-vs-code-github-copilot-command-allowdeny-lists-resubmit-requests-mcp-server-catalog/

## Claude Code permissions model [CS: HIGH — this is the current harness]
- Named permission modes: default (prompt on first use) / acceptEdits / plan
  (read-only) / dontAsk / bypassPermissions / auto (background safety checks).
- Per-tool allow/deny/ask rules, wildcard patterns supported
  (e.g. `mcp__server__tool*`).
- Rule precedence: deny > ask > allow, first match wins.
- https://code.claude.com/docs/en/permissions
- https://www.anthropic.com/engineering/claude-code-auto-mode

## Content-moderation confidence-threshold dashboards [CS: MEDIUM]
- Pattern: per-category numeric thresholds drive three-way routing — auto-block /
  flag-for-review / escalate-to-human.
- The specific numeric example found (child-safety 0.5, violence 0.9, hate speech
  0.95, spam 0.8) reads as an illustrative generic explainer, NOT confirmed as one
  named vendor's actual live settings screen. [CS: LOW] on that specific example.
- sightengine.com documents real, named per-threshold API behavior for its own
  product. [CS: MEDIUM]
- https://sightengine.com/faq/confidence-thresholds
- https://getstream.io/blog/automated-content-moderation/

## SAE autonomous-vehicle disengagement / confidence-based takeover request [CS: MEDIUM]
- At least one patent describes a system surfacing the AV's per-decision confidence
  level and requesting driver feedback ONLY on low-confidence decisions — not a
  blanket takeover model.
- Single patent document — not confirmed as a shipped consumer-facing UI.
- https://image-ppubs.uspto.gov/dirsearch-public/print/downloadPdf/11745769

## Notion 3.0 custom agents [CS: MEDIUM — secondary sources, not Notion's own docs]
- Permissions scoped per-database and per-action-type: an agent can be restricted to
  specific databases and specific allowed actions.
- Audit log tracks every read/write/external API call per agent.
- https://notioners.com/notion-30-the-era-of-custom-agents-and-granular-permissions
- https://www.digitalapplied.com/blog/notion-custom-agents-autonomous-workflow-guide
