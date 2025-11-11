---
name: coordinate-global-docs
description: Coordinate global-level documentation managing cross-profile standards, environment setup, profile management patterns, and global MCP configuration. Masters hierarchical top-level documentation.
---

# Global Documentation Coordination Skill

Coordinate global-level documentation that applies across all profiles, managing cross-profile patterns and global standards.

## Global Documentation Scope

### 1. Global AGENTS.md
Top-level context:
- Directory overview (profile structure)
- Profile management
- Global development setup
- Cross-profile standards
- MCP performance optimization

**Token Budget**: 8-12k characters

### 2. Global Documentation Structure
Organized in ~/Projects/docs/:
- setup/ (environment, git, tools)
- optimization/ (performance, history)
- mcp/ (tool registry, patterns)
- continuous-improvement/ (learnings)
- profile-comparison/ (cross-profile insights)

### 3. Cross-Profile Patterns
Patterns applicable to all profiles:
- MCP tool usage
- Git workflows
- Documentation standards
- Optimization patterns
- Learning capture

### 4. Profile Management
Profile-related documentation:
- Profile definitions
- Profile switching
- Profile-specific settings
- Cross-profile coordination

## Coordination Tasks

### Maintain Global Standards
- Commit standards (Conventional Commits)
- File organization (XDG Base Directory)
- Documentation structure
- Version control practices
- Security standards

### Extract Cross-Profile Patterns
When pattern appears in multiple profiles:
1. Identify common elements
2. Extract to global documentation
3. Note profile-specific variations
4. Update all profiles to reference global
5. Verify no duplication

### Manage Profile Boundaries
Clear separation:
- Global: Truly cross-profile patterns
- Profile: Profile-specific implementations
- No forcing profile patterns to global
- Respect profile differences
- Document variations

### Coordinate Documentation Updates
- Global docs updated first
- Profile docs reference global
- Consistency across profiles
- Regular cross-profile reviews
- Quarterly aggregation

## Global Documentation Pattern

```markdown
# Global Title

## Overview
[Cross-profile applicability]

## Profile Structure
[How profiles are organized]

## Global Standards
[Standards applying to all]

## Profile-Specific Variations
- pjbeyer: [Variation]
- work: [Variation]
- play: [Variation]

## References
- Profile AGENTS.md files
- Detailed documentation in docs/
```

## Cross-Profile Analysis

### Identify Patterns
Look for patterns in:
- Multiple profile learnings
- Similar tool usage
- Common workflows
- Repeated solutions
- Shared challenges

### Evaluate for Extraction
Ask:
- Used by 2+ profiles?
- Truly cross-cutting?
- Benefits from centralization?
- Profile variations manageable?
- Worth the complexity?

### Document Appropriately
If yes, extract to global:
- Common pattern in global docs
- Profile variations noted
- Clear when to use which
- Examples from multiple profiles
- References from all profiles

If no, keep in profiles:
- Profile-specific documentation
- Note in global that profiles differ
- Cross-reference between profiles
- Explain why not global

## Quality Checklist

- ✓ Only cross-profile patterns in global
- ✓ Profile variations documented
- ✓ Clear profile boundaries
- ✓ Global standards current
- ✓ Cross-references valid
- ✓ Token budget met
- ✓ Profiles reference (not duplicate) global
- ✓ Regular cross-profile reviews scheduled

## Integration

Invoked by:
- Global documentation reviews
- Cross-profile pattern extraction
- Profile management updates
- Quarterly cross-profile analysis
