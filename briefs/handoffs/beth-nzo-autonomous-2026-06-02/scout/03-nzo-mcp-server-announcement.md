# N-zo AI Assistant & MCP Server Public Preview Announcement

**Source:** https://status.n-able.com/2026/04/14/introducing-the-public-preview-of-n-zo-n-ables-ai-assistant-and-the-n-able-mcp-server/  
**Retrieved:** 2026-06-02  
**Confidence:** [CS: VERIFIED] — Official N-able announcement

## N-zo Capabilities (April 2026 Launch)

N-zo is an embedded AI assistant for N-central and N-sight with three specialized agents:

### 1. Managed Assets Expert
- Device troubleshooting and health monitoring
- Identifies root causes and performance anomalies
- Example use: analyzing slow devices or flagging upgrade needs

### 2. Product Knowledge Expert
- Provides in-product documentation answers
- Reduces context-switching by eliminating external searches
- Example use: guidance on enabling Patch Management or integration steps

### 3. Risk & Vulnerability Expert
- CVE impact assessment
- Device vulnerability prioritization
- Remediation status tracking

## Performance Claims

[CS: MEDIUM — no methodology disclosed]

"70% time savings across common IT tasks" with specific gains:
- 80% efficiency gains on documentation lookups
- 53% on device troubleshooting

## MCP Server Functionality

The N-able MCP Server extends capabilities beyond the UI by enabling external AI tools (Claude, ChatGPT, Microsoft Copilot) to:

- Query live environment data in real-time
- Execute bidirectional actions (not read-only) [CS: MEDIUM — vague on what "actions" means]
- Integrate with other vendor MCP servers
- Operate within existing authentication and permission scopes

## Action Execution

[CS: MEDIUM]

Documentation indicates MCP server supports "supported actions bidirectionally," suggesting capability for task execution. Sample prompts reference logging alerts and posting summaries, indicating automation potential.

**Unclear:** Whether actions are executed through N-zo UI or only via external AI tools connected through MCP server.

## Roadmap

"Additional experts will be introduced — expanding N-zo's ability to support more workflows" in coming months.

No specific features or timelines detailed. [CS: VERIFIED]

## Availability

- **N-zo:** N-central hosted and all N-sight customers (on-prem joins with version 2026.2)
- **MCP Server:** All N-central and N-sight customers including on-prem
