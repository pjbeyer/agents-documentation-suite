---
name: publish-docs
description: Publish documentation to multiple platforms (Notion, GitHub, local) with platform-specific formatting and access control.
---

# Documentation Publishing Skill

Publish documentation to appropriate platforms with correct formatting and access control.

## Supported Platforms

### 1. Notion
- Team collaboration docs
- Internal knowledge bases
- Process documentation
- Project dashboards

**Features**:
- Database properties
- Templates
- Views and filters
- Access control
- Comments and collaboration

### 2. GitHub
- Open source documentation
- Public READMEs
- Technical specifications
- Contributing guidelines

**Features**:
- Markdown rendering
- Code syntax highlighting
- Version control
- Public/private control
- GitHub Pages (static sites)

### 3. Local Markdown
- Agent AGENTS.md files
- Profile documentation
- Development docs
- Reference materials

**Features**:
- Hierarchical organization
- Fast access
- Version controlled
- Portable

## Publishing Workflows

### Notion Publishing
1. Convert markdown to Notion format
2. Create/update pages
3. Set database properties
4. Configure access permissions
5. Add to appropriate workspace

### GitHub Publishing
1. Commit documentation to repository
2. Push to appropriate branch
3. Update README links
4. Configure GitHub Pages (if applicable)
5. Tag release versions

### Local Publishing
1. Write to correct hierarchy level
2. Update cross-references
3. Verify file permissions
4. Update parent documentation
5. Add to git (if tracked)

## Platform-Specific Formatting

### Notion Formatting
- Convert code blocks to Notion format
- Add callouts for important info
- Use toggles for collapsible sections
- Add database views
- Include inline page mentions

### GitHub Markdown
- Use GitHub-flavored markdown
- Add badges and shields
- Include syntax highlighting
- Use relative links
- Add table of contents for long docs

### Local Markdown
- Standard markdown format
- Absolute paths for cross-references
- Minimal formatting
- Clear headings
- Scannable structure

## Access Control

### Notion
- Public: Anyone with link
- Workspace: Team members only
- Private: Specific people
- Database permissions

### GitHub
- Public repository
- Private repository
- Organization access
- Collaborator permissions

### Local
- File permissions (chmod)
- Directory access
- Profile-specific (via profile structure)

## Quality Checklist

- ✓ Published to correct platform
- ✓ Platform-specific formatting applied
- ✓ Access permissions configured
- ✓ Cross-references work on platform
- ✓ Code blocks render correctly
- ✓ Images/assets accessible
- ✓ Navigation functional

## Integration

Invoked by:
- `/doc publish --platform=notion|github|local` command
- Documentation publishing pipelines
- Multi-platform distribution workflows
