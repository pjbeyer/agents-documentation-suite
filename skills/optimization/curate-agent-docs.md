---
name: curate-agent-docs
description: Curate agent-level documentation with completeness verification, usage examples, and workflow documentation. Masters agent documentation quality.
---

# Agent Documentation Curation Skill

Curate agent-level documentation ensuring completeness, accuracy, and proper integration with project documentation.

## Agent Documentation Components

### 1. Agent AGENTS.md
Core agent specification:
- Purpose and capabilities
- Primary workflows (outline)
- Integration points
- Sub-agent list (if applicable)
- Configuration requirements

**Token Budget**: 2-6k characters (profile-dependent)

### 2. Agent README.md
Human-readable overview:
- What the agent does
- When to use it
- How to use it
- Examples
- Configuration options

### 3. Usage Examples
Concrete examples in docs/examples/:
- Common use cases
- Input/output examples
- Integration examples
- Error handling examples

### 4. Workflow Documentation
Detailed workflows in docs/workflows/:
- Step-by-step procedures
- Decision trees
- Integration patterns
- Best practices

## Curation Tasks

### Completeness Verification
Check agent documentation includes:
- [ ] Clear purpose statement
- [ ] Capability list
- [ ] Usage examples
- [ ] Integration points documented
- [ ] Configuration documented
- [ ] Sub-agents listed (if applicable)
- [ ] Related agents cross-referenced

### Accuracy Validation
Verify information is current:
- Test examples still work
- Configuration matches actual requirements
- Capabilities accurately described
- Integration points valid
- Workflow steps current

### Quality Improvement
Enhance documentation quality:
- Add missing examples
- Clarify ambiguous sections
- Improve organization
- Update outdated content
- Add cross-references

### Hierarchy Compliance
Ensure proper organization:
- Agent-specific content in agent docs
- Project patterns in project docs
- Profile standards in profile docs
- Global patterns in global docs
- References not duplication

## Agent Documentation Pattern

```markdown
# Agent Name

## Purpose
[1-2 sentence description]

## Capabilities
- [Capability 1]
- [Capability 2]

## Primary Workflows
[Brief outline]

See: docs/workflows/[workflow].md

## Integration Points
- [Integration 1]: [Brief description]
- [Integration 2]: [Brief description]

## Sub-Agents
- [Sub-agent 1]: [Purpose]
- [Sub-agent 2]: [Purpose]

## Configuration
[Required configuration]

See: docs/configuration.md

## Examples
See: docs/examples/

## Related Agents
- [Related agent 1]
- [Related agent 2]
```

## Quality Checklist

- ✓ Purpose clearly stated
- ✓ All capabilities documented
- ✓ Usage examples provided
- ✓ Integration points clear
- ✓ Configuration documented
- ✓ Sub-agents listed (if applicable)
- ✓ Cross-references valid
- ✓ Token budget met
- ✓ Information current and accurate

## Integration

Invoked by:
- Agent documentation reviews
- New agent creation workflows
- Documentation completeness checks
- Quality assurance processes
