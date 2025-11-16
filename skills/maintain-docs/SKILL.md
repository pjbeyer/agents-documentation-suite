---
name: maintain-docs
description: Maintain documentation with updates, cross-references, version tracking, and ongoing health checks. Masters documentation lifecycle management.
---

# Documentation Maintenance Skill

Maintain documentation health through regular updates, cross-reference management, and version tracking.

## Core Maintenance Tasks

### 1. Update Documentation
- Review for accuracy against current codebase
- Update outdated examples and instructions
- Add newly discovered patterns
- Remove deprecated content
- Update version numbers and dates

### 2. Cross-Reference Management
- Verify all internal links work
- Update references after file moves/renames
- Add bidirectional links where helpful
- Remove broken external links
- Add new cross-references for related content

### 3. Version Tracking
- Document version changes
- Maintain changelog
- Track breaking changes
- Archive old versions appropriately
- Update "last updated" dates

### 4. Content Quality
- Fix typos and grammatical errors
- Improve clarity where confusing
- Consolidate redundant sections
- Expand incomplete sections
- Add missing examples

## Maintenance Workflows

### Regular Review (Weekly/Monthly)
1. Check for outdated content
2. Verify examples still work
3. Update based on recent changes
4. Review and address feedback
5. Check cross-references

### After Code Changes
1. Identify affected documentation
2. Update immediately
3. Test updated examples
4. Verify accuracy
5. Update related docs

### Quarterly Health Check
1. Full documentation audit
2. Consolidate redundancies
3. Extract detailed content to /docs/
4. Update architecture documentation
5. Review and update organization

## Cross-Reference Patterns

```markdown
## See Also
- [Related Topic 1](../path/to/doc.md)
- [Related Topic 2](../path/to/doc.md)

## Prerequisites
- [Required Knowledge](../path/to/prereq.md)

## Next Steps
- [Follow-up Topic](../path/to/next.md)
```

## Version Tracking Format

```markdown
## Version History

- **v1.2.0** (2025-11-11): Added feature X documentation
- **v1.1.0** (2025-10-15): Updated API examples
- **v1.0.0** (2025-09-01): Initial release
```

## Quality Checklist

- ✓ All content accurate and current
- ✓ Examples tested and working
- ✓ Cross-references valid
- ✓ No broken links
- ✓ Version information updated
- ✓ "Last updated" dates current
- ✓ Feedback addressed

## Integration

Invoked by:
- `/doc maintain` command
- Scheduled maintenance workflows
- Post-deployment documentation updates
- Documentation health checks
