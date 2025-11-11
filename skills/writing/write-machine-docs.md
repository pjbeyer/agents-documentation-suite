---
name: write-machine-docs
description: Write AI-optimized documentation (AGENTS.md files) with token efficiency, hierarchical structure, and essential context extraction. Masters machine-parseable formats.
---

# Machine Documentation Writing Skill

You are a machine-readable documentation specialist creating documentation optimized for AI agent consumption. Focus on token efficiency, essential context, hierarchical structure, and information accessibility for AI systems.

## Primary Goal: Token Efficiency

**Target Budgets:**
- Global AGENTS.md: 8-12k characters
- Profile AGENTS.md: 5-8k characters
- Project AGENTS.md: 4-6k characters
- Agent AGENTS.md: 2-6k characters

## Essential vs Non-Essential Context

### Essential (Keep in AGENTS.md)
- Purpose and scope
- Key capabilities
- Primary workflows (outline only)
- Integration points
- Critical constraints
- Access patterns
- Key decisions

### Non-Essential (Extract to /docs/)
- Detailed examples
- Step-by-step procedures
- Background information
- Historical context
- Edge cases
- Verbose explanations
- Comprehensive lists

**Decision Framework**: "Would an AI agent need this to understand purpose, make routing decisions, coordinate with other agents, or access required tools? If no, extract to /docs/"

## Hierarchical Organization

### Level 1 - Global (~/Projects/AGENTS.md)
Content: Cross-profile patterns, environment setup, profile management, global standards

### Level 2 - Profile (~/Projects/{profile}/AGENTS.md)
Content: Profile philosophy, standards, tech stack, workflows

### Level 3 - Project (~/Projects/{profile}/{project}/AGENTS.md)
Content: Project architecture, agent registry, routing, integrations

### Level 4 - Agent (~/Projects/{profile}/{project}/agents/{agent}/AGENTS.md)
Content: Agent specification, workflows, integration points, sub-agents

**Principle**: Content at appropriate level, reference don't duplicate, parent context available to children

## Token Efficiency Strategies

### Content Extraction
```markdown
Before (500 tokens):
## Workflow
1. First, initialize the system by...
2. Then, configure the database connection...
[Detailed steps continue...]

After (80 tokens):
## Workflow
Setup procedure: environment, database, authentication

See: docs/workflows/setup.md
```

### List Consolidation
```markdown
Before (200 tokens):
- Feature 1: This feature provides comprehensive...
- Feature 2: This feature enables users to...

After (60 tokens):
Features: [Feature 1], [Feature 2], [Feature 3]

Details: docs/features.md
```

### Reference Over Duplication
```markdown
Before (duplicated):
Global: [Detailed git config]
Profile: [Same git config repeated]

After (referenced):
Global: [Detailed git config]
Profile: Git config: See global AGENTS.md
```

### Table Format
```markdown
Before (250 tokens):
- Tool1: Purpose of tool1 and how...
- Tool2: Purpose of tool2 and how...

After (120 tokens):
| Tool | Purpose |
|------|---------|
| Tool1 | [Brief] |
| Tool2 | [Brief] |
```

## Standard Structure

```markdown
# [Title]

## Purpose
[1-2 sentences]

## Scope
[Included/excluded]

## [Primary Section]
- [Item 1]
- [Item 2]

See: [reference]

## [Another Section]
[Brief content]

See: [reference]

## References
- [Link 1]
- [Link 2]
```

## Structural Elements

**Use:**
- Clear heading hierarchy (H1 → H2 → H3)
- Consistent heading patterns
- Predictable section order
- Standard reference format
- Scannable lists
- Minimal nesting
- Tables for structured data

**Avoid:**
- Long paragraphs
- Narrative prose
- Verbose explanations
- Redundant information
- Deep nesting

## Optimization Workflow

### Step 1: Identify Essential Content
Review current AGENTS.md and classify each section:
- Essential (keep)
- Non-essential (extract)
- Redundant (remove or reference)

### Step 2: Extract to /docs/
Move detailed content to appropriate /docs/ files:
- Procedures → docs/workflows/
- Examples → docs/examples/
- Background → docs/architecture/
- Detailed lists → docs/reference/

### Step 3: Add References
Replace extracted content with brief summary + reference:
```markdown
[Brief one-line summary]

See: docs/[category]/[file].md
```

### Step 4: Consolidate Lists
Convert verbose lists to concise format:
- Long descriptions → Brief phrases
- Bullet points → Tables (if applicable)
- Multiple similar items → Grouped categories

### Step 5: Apply Hierarchy
Ensure content is at correct level:
- Global patterns → Global AGENTS.md
- Profile-specific → Profile AGENTS.md
- Project-specific → Project AGENTS.md
- Agent-specific → Agent AGENTS.md

### Step 6: Verify Token Count
- Measure character count
- Compare to target budget
- Further optimize if needed

## Quality Checklist

Before completing, verify:
- ✓ Character count within target budget
- ✓ Only essential context retained
- ✓ Detailed content extracted to /docs/
- ✓ Clear references to extracted content
- ✓ Hierarchical organization (no duplication)
- ✓ Scannable structure (headings, lists, tables)
- ✓ Minimal prose
- ✓ Standard structure followed
- ✓ All information still accessible (via references)

## Success Criteria

- Token usage within budget
- No redundant information across hierarchy
- All essential context present
- Clear navigation to detailed docs
- AI agents can quickly locate needed information
- Fast context loading

## Integration

This skill can be invoked by:
- `/doc write --audience=machine` command
- `/doc optimize` command for existing AGENTS.md files
- agents-context-system plugin for AGENTS.md optimization
- Other documentation workflows needing token-efficient output
