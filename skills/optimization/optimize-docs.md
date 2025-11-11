---
name: optimize-docs
description: Optimize documentation for token efficiency, clarity improvements, hierarchical organization, and content restructuring. Masters balance between machine readability and human comprehension.
---

# Documentation Optimization Skill

Optimize existing documentation for efficiency, clarity, and proper hierarchical organization.

## Optimization Goals

### 1. Token Efficiency
Reduce token usage while preserving essential information:
- Extract detailed content to /docs/
- Replace prose with lists/tables
- Remove redundancy
- Add references instead of duplication
- Consolidate similar sections

### 2. Clarity Improvement
Make documentation easier to understand:
- Simplify complex language
- Add examples where missing
- Improve structure and headings
- Fix ambiguous instructions
- Remove obsolete content

### 3. Hierarchical Organization
Ensure content is at appropriate level:
- Move global patterns to global docs
- Keep profile-specific in profile docs
- Extract project details to project docs
- Reference higher-level docs instead of duplicating

### 4. Content Restructuring
Improve organization and flow:
- Logical section order
- Clear heading hierarchy
- Related content grouped
- Cross-references added
- Navigation improved

## Optimization Process

### Step 1: Analyze Current State
- Measure token/character count
- Identify redundant sections
- Find content at wrong hierarchy level
- Note clarity issues
- List missing cross-references

### Step 2: Extract Detailed Content
Move to appropriate /docs/ location:
- Examples → docs/examples/
- Procedures → docs/workflows/
- Background → docs/architecture/
- Reference lists → docs/reference/
- Historical context → docs/history/

### Step 3: Consolidate and Simplify
- Convert prose to lists
- Use tables for structured data
- Remove redundant explanations
- Consolidate similar sections
- Simplify language

### Step 4: Add References
Replace extracted content with:
```markdown
[One-line summary]

See: docs/[category]/[file].md
```

### Step 5: Reorganize Hierarchy
- Content to correct level
- Reference parent docs
- Remove duplication
- Update cross-references
- Verify hierarchy flow

### Step 6: Verify and Test
- Measure new token count
- Verify no information lost
- Test all references work
- Ensure clarity maintained
- Confirm hierarchical correctness

## Optimization Patterns

### Prose to List
```markdown
Before:
The system supports multiple features including user authentication, data validation, and error handling. Each of these features...

After:
Features: authentication, validation, error handling

Details: docs/features.md
```

### Detailed to Referenced
```markdown
Before:
Step 1: First, open the configuration file...
Step 2: Next, locate the section...
[20 more detailed steps...]

After:
Setup: Configure system via config file

Procedure: docs/workflows/setup.md
```

### Duplication to Reference
```markdown
Before:
Global: [Detailed MCP setup process]
Profile: [Same MCP setup repeated]

After:
Global: [Detailed MCP setup]
Profile: MCP setup: See global AGENTS.md
```

## Target Metrics

**AGENTS.md Token Budgets:**
- Global: 8-12k characters
- Profile: 5-8k characters
- Project: 4-6k characters
- Agent: 2-6k characters

**Optimization Targets:**
- Reduce by 30-50% while preserving information
- All detailed content accessible via references
- Clear hierarchy with no duplication
- Improved clarity and readability

## Quality Checklist

- ✓ Token count within target budget
- ✓ All information still accessible
- ✓ References to extracted content clear
- ✓ Hierarchical organization correct
- ✓ No duplication across levels
- ✓ Clarity improved or maintained
- ✓ Cross-references valid

## Integration

Invoked by:
- `/doc optimize` command
- AGENTS.md optimization workflows
- Documentation health checks
- Token budget compliance reviews
