# Workflow System Integration

## Overview

agents-documentation-suite integrates with the workflow system to automatically detect documentation needs and create tracking issues.

## Features

### Automatic Doc Impact Detection

When you finish work with `/work-finish`, the system analyzes your changes and detects if documentation updates are needed:

**Triggers**:
- New public functions, classes, or APIs
- Changes to existing API endpoints
- Architectural changes in source files

**Behavior**:
- Analyzes git diff between base and feature branch
- Identifies doc-worthy changes
- Prompts user or auto-creates doc issue
- Links doc issue to implementation issue

### Documentation Issues

Auto-created issues include:
- Context from implementation issue
- Specific impact reasons
- Documentation checklist
- References to commits and branches

### Configuration

Control behavior via profile config:

```yaml
preferences:
  auto_create_doc_issues: false  # Auto-create without prompting
```

**Values**:
- `false` (default): Prompts user when doc impact detected
- `true`: Automatically creates doc issue without prompting

## Usage

### Basic Workflow

```bash
# Start implementation work
/work-start "Add user authentication"

# [implement feature with new public API]

# Finish work
/work-finish
# → Detects new public API
# → Prompts: "Create documentation issue? (y/n)"
# → Creates issue: "Documentation Update: user-authentication"
# → Links to implementation issue

# Later, work on documentation
/work-resume user-authentication-documentation
# [write documentation]
/work-finish
```

### Auto-Create Mode

Set `auto_create_doc_issues: true` in profile config:

```bash
/work-finish
# → Automatically creates doc issue if impact detected
# → No prompting required
```

## Integration Points

### Scripts

- `detect-doc-impact.sh`: Analyzes git diff for doc impact
- `create-doc-issue.sh`: Creates GitHub issues from template
- `finish.md`: Main integration point, calls detection (Step 4.5)

### Templates

- `doc-issue.md`: Template for auto-created issues

### Configuration

- `{profile}/.workflow/overrides.yaml`: Profile-specific settings

## Troubleshooting

### Detection Not Working

```bash
# Check script exists
ls ~/.claude/skills/workflow/scripts/detect-doc-impact.sh

# Make executable
chmod +x ~/.claude/skills/workflow/scripts/detect-doc-impact.sh

# Test manually
cd ~/Projects/pjbeyer/my-project
~/.claude/skills/workflow/scripts/detect-doc-impact.sh main feature/my-branch
```

### Issue Creation Fails

```bash
# Check gh CLI authentication
gh auth status

# Check template exists
ls ~/.claude/skills/workflow/templates/doc-issue.md

# Check GitHub remote configured
git remote -v
```

### Config Not Respected

```bash
# Check profile config
cat ~/Projects/pjbeyer/.workflow/overrides.yaml | grep -A1 "auto_create_doc_issues"

# Verify profile detection
cd ~/Projects/pjbeyer/my-project
~/.claude/skills/workflow/scripts/detect-profile.sh
```

## Future Enhancements

- PR merge hooks for doc checking
- AGENTS.md budget violation detection
- Integration with agents-context-system
- Quality review with superpowers
