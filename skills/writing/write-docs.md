---
name: write-docs
description: General documentation writing with audience selection and adaptive style. Routes to specialized writing skills based on context.
---

# General Documentation Writing Skill

General-purpose documentation writing that adapts to audience and context. Routes to specialized skills when appropriate.

## Audience Detection

Determine appropriate audience:
- **Human**: End users, developers, stakeholders → use write-human-docs
- **Machine**: AI agents, context files → use write-machine-docs
- **Team**: Internal collaboration, Notion → use write-team-docs
- **Public**: External audience, open source → use write-public-docs

## Quick Documentation Patterns

### Feature Documentation
```markdown
# Feature Name

## Overview
[What it does, why it exists]

## Usage
[How to use it]

## Examples
[Working examples]

## Configuration
[Options and settings]

## Limitations
[Known constraints]
```

### API Documentation
```markdown
# Endpoint Name

**Method**: GET/POST/etc
**Path**: /api/v1/resource

## Parameters
| Name | Type | Required | Description |
|------|------|----------|-------------|

## Response
[Expected response format]

## Examples
[Request/response examples]

## Errors
[Error codes and meanings]
```

### Process Documentation
```markdown
# Process Name

## When to Use
[Trigger conditions]

## Steps
1. [Action with context]
2. [Action with context]

## Verification
[How to confirm success]

## Troubleshooting
[Common issues]
```

## Writing Principles

- **Clarity**: Simple language, clear structure
- **Completeness**: All necessary information
- **Accuracy**: Tested and verified
- **Maintainability**: Easy to update
- **Findability**: Easy to locate

## Quality Checklist

- ✓ Appropriate audience identified
- ✓ Clear purpose and scope
- ✓ Logical organization
- ✓ Examples provided
- ✓ Accurate information
- ✓ Next steps clear

## Integration

Invoked by:
- `/doc write` command (without specific audience)
- Documentation creation workflows
- General documentation needs
