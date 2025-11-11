---
name: coordinate-project-docs
description: Coordinate project-level documentation across components including agent registry, routing, architecture, and integration patterns. Masters project-scope documentation.
---

# Project Documentation Coordination Skill

Coordinate documentation across a project, ensuring consistency, completeness, and proper organization of all project components.

## Project Documentation Scope

### 1. Project AGENTS.md
Core project context:
- Project architecture
- Agent registry (all agents in project)
- Agent routing (which agent for what task)
- Integration patterns
- Key decisions

**Token Budget**: 4-6k characters

### 2. Project README.md
Project overview for humans:
- What the project does
- Why it exists
- How to get started
- Project structure
- Contributing guidelines

### 3. Architecture Documentation
Technical architecture in docs/:
- System design
- Component interactions
- Data flow
- Technology choices
- Deployment architecture

### 4. Agent Registry
Complete list of project agents:
- Agent purpose
- Agent capabilities
- When to use each agent
- Agent dependencies
- Agent status (active/deprecated)

## Coordination Tasks

### Ensure Consistency
- Naming conventions across docs
- Terminology usage
- Cross-reference format
- Documentation structure
- Update frequency

### Maintain Completeness
- All agents documented
- All integrations covered
- Architecture current
- Examples for key workflows
- Configuration documented

### Organize Hierarchically
- Project-specific in project docs
- Profile patterns in profile docs
- Agent-specific in agent docs
- No duplication across levels
- Clear references to parent docs

### Update Cross-References
- Agent registry current
- Routing documentation updated
- Architecture docs linked
- Integration patterns cross-referenced
- Related projects linked

## Agent Registry Format

```markdown
## Agent Registry

| Agent | Purpose | Status |
|-------|---------|--------|
| agent-1 | [Brief purpose] | Active |
| agent-2 | [Brief purpose] | Active |
| agent-3 | [Brief purpose] | Deprecated |

### Agent Routing

**For [task type]**: Use agent-1
**For [task type]**: Use agent-2

See: agents/[agent-name]/AGENTS.md
```

## Project Documentation Pattern

```markdown
# Project Name

## Purpose
[1-2 sentences]

## Architecture
[High-level overview]

See: docs/architecture/

## Agent Registry
[Agent list with routing]

See: agents/

## Integration Patterns
[Key integrations]

See: docs/integrations/

## Key Decisions
[Important architectural decisions]

See: docs/decisions/
```

## Quality Checklist

- ✓ All agents in registry
- ✓ Routing documentation current
- ✓ Architecture documented
- ✓ Integration patterns clear
- ✓ Consistent terminology
- ✓ Cross-references valid
- ✓ Token budget met
- ✓ No duplication with profile/global docs

## Integration

Invoked by:
- Project setup workflows
- Project documentation reviews
- Agent addition/removal processes
- Architecture update workflows
