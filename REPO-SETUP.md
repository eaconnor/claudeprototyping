# Git Repo Setup — Share Band Protocol at n-able

## Files to commit

```
.claude/
├── agents/
│   ├── bradley.md
│   ├── build.md
│   ├── council.md
│   ├── critic.md
│   ├── george.md
│   ├── paul.md
│   ├── proctor.md
│   ├── ringo.md
│   ├── scout.md
│   ├── spec.md
│   └── tech.md
├── skills/
│   ├── handoff/
│   │   └── SKILL.md
│   └── prototype/
│       ├── SKILL.md
│       ├── README.md
│       ├── test-cases-nicole.json
│       └── references/
│           ├── attribution-matrix.md
│           └── ownership-attribution.md
└── settings.json         ← Minimal env vars only

CLAUDE.md                 ← Full protocol documentation
ONBOARDING.md             ← Setup guide (what you just created)
README.md                 ← Quick intro (create below)
.gitignore                ← Exclude settings.local.json
```

## What NOT to commit

```
.claude/settings.local.json   ← User-specific permissions, local paths
.claude/launch.json           ← Local debugging config
briefs/                       ← Project-specific work
prototypes/                   ← Generated outputs
```

## .gitignore

```gitignore
# User-specific Claude Code settings
.claude/settings.local.json
.claude/launch.json

# Generated outputs
prototypes/
briefs/handoffs/
critic-*.md
council-testimony.md
proctor-*.md

# Project-specific work
HANDOFF-*.md
JULIAN-*.md

# macOS
.DS_Store
```

## README.md (repo root)

```markdown
# Band Protocol — n-able Prototyping Pipeline

**AI-native design pipeline that produces integrity-first prototypes.**

Clone this repo → open in Claude Code → type `/prototype [your idea]` → get a working HTML demo with research-backed decisions and routed ownership cards.

## Quick start

1. **Clone this repo**
   ```bash
   git clone [your-repo-url]
   cd Bethproto
   ```

2. **Open in Claude Code**
   - Desktop app, CLI, or web
   - Connect your n-able Atlassian account (Jira/Confluence)

3. **Run a prototype**
   ```
   /prototype [your idea]
   ```

## What you get

- Working HTML prototype (functional UI, Itten palette, 28px grid)
- Bradley rail with readiness tier + routed cards (Product/Design/Research/Eng)
- Three-gate brief with claim tagging ([R] research, [D] data, [A] assumed)
- Handoff packet with verified math and next steps

## Documentation

- [ONBOARDING.md](ONBOARDING.md) — Full setup guide
- [CLAUDE.md](CLAUDE.md) — Protocol specification
- `.claude/agents/` — Nine subagents (scout, spec, build, critic, council, etc.)
- `.claude/skills/` — `/prototype` and `/handoff` commands

## Governing constraints

1. **Free.** No paywalls.
2. **Open.** Fork it. Teach it.
3. **Integrity-first.** Every claim tagged. Unknown > fabricated.
4. **Environmental discipline.** BITE-sized responses by default.

Part of [The Open Vector](link-when-published) curriculum for AI-native product development.

## Built by

Beth Schwindt, Sr. UX Designer, Adlumin  
With the Band Protocol agent framework

---

**Built with integrity. Shipped with attribution. Free forever.**
```

## Next steps

1. **Initialize git** (if not already)
   ```bash
   cd /Users/elizabeth/Desktop/Bethproto
   git init
   ```

2. **Create .gitignore**
   ```bash
   # Use the .gitignore content above
   ```

3. **First commit**
   ```bash
   git add .claude/ CLAUDE.md ONBOARDING.md README.md .gitignore
   git commit -m "Initial commit: Band Protocol for n-able

   - Nine agents (scout, spec, build, critic, council, bradley, paul, george, tech)
   - /prototype skill (full pipeline)
   - /handoff skill
   - Three-gate brief framework
   - Confidence tagging system
   - Itten palette + design system"
   ```

4. **Push to n-able repo** (GitHub, GitLab, Bitbucket, etc.)
   ```bash
   git remote add origin [your-n-able-repo-url]
   git branch -M main
   git push -u origin main
   ```

5. **Share with team**
   Send them the repo URL. They clone and open in Claude Code.

## User-specific setup

Each user needs to:

1. **Connect Atlassian MCP** in Claude Code settings
   - Jira: `n-able.atlassian.net`
   - Cloud ID: `21ab04ef-0acf-4e62-b163-a12e66774c17`

2. **Set permissions** (optional — or let Claude Code prompt)
   Create `.claude/settings.local.json`:
   ```json
   {
     "permissions": {
       "allow": [
         "Read(*)",
         "Write(*)",
         "Edit(*)",
         "Bash(mkdir:*)",
         "Bash(find:*)",
         "Bash(grep:*)",
         "WebSearch(*)",
         "WebFetch(*)",
         "mcp__*__getAccessibleAtlassianResources",
         "mcp__*__getVisibleJiraProjects",
         "mcp__*__getConfluencePage",
         "mcp__*__searchJiraIssuesUsingJql",
         "mcp__*__searchConfluenceUsingCql"
       ]
     }
   }
   ```

That's it. `/prototype` will work immediately.
