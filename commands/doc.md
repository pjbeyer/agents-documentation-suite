---
description: Comprehensive documentation management for writing, maintaining, optimizing, and publishing docs
---

# Doc - Documentation Management

Comprehensive documentation management with subcommands for writing, maintaining, optimizing, and publishing documentation.

## Usage

```bash
/doc [subcommand] [options]
```

## Subcommands

### write
Write documentation with audience-specific optimization.

**Usage**:
```bash
/doc write --audience=<audience> [--level=<level>]
```

**Audiences**:
- `human` - Human-readable (guides, tutorials, READMEs)
- `machine` - AI-optimized (AGENTS.md files)
- `team` - Team collaboration (Notion docs)
- `public` - Public-facing (open source, client deliverables)

**Levels** (optional):
- `global` - Cross-profile documentation
- `profile` - Profile-specific documentation
- `project` - Project-specific documentation
- `agent` - Agent-specific documentation

**Skills invoked**:
- `--audience=human` → write-human-docs
- `--audience=machine` → write-machine-docs
- `--audience=team` → write-team-docs
- `--audience=public` → write-public-docs
- No audience specified → write-docs (general)

**Examples**:
```bash
/doc write --audience=human --level=project
/doc write --audience=machine --level=agent
/doc write --audience=team
```

### maintain
Maintain documentation with updates and cross-reference management.

**Usage**:
```bash
/doc maintain [--scope=<scope>]
```

**Scopes**:
- `all` - All documentation (default)
- `profile` - Profile-level docs
- `project` - Project-level docs
- `agent` - Agent-level docs

**Skills invoked**: maintain-docs

**Examples**:
```bash
/doc maintain
/doc maintain --scope=project
```

### optimize
Optimize documentation for token efficiency and clarity.

**Usage**:
```bash
/doc optimize [--target=<target>]
```

**Targets**:
- `agents-md` - AGENTS.md files (default)
- `all` - All documentation
- `<file-path>` - Specific file

**Skills invoked**: optimize-docs

**Examples**:
```bash
/doc optimize
/doc optimize --target=~/Projects/pjbeyer/AGENTS.md
```

### publish
Publish documentation to platforms.

**Usage**:
```bash
/doc publish --platform=<platform> [--source=<source>]
```

**Platforms**:
- `notion` - Notion workspace
- `github` - GitHub repository
- `local` - Local markdown files

**Skills invoked**: publish-docs

**Examples**:
```bash
/doc publish --platform=notion
/doc publish --platform=github --source=./README.md
```

### curate
Curate agent documentation for completeness.

**Usage**:
```bash
/doc curate [--agent=<agent-path>]
```

**Skills invoked**: curate-agent-docs

**Examples**:
```bash
/doc curate
/doc curate --agent=~/Projects/work/agents/security-scanner
```

### coordinate
Coordinate documentation across hierarchy levels.

**Usage**:
```bash
/doc coordinate --level=<level>
```

**Levels**:
- `global` - Global documentation
- `profile` - Profile documentation
- `project` - Project documentation

**Skills invoked**:
- `--level=global` → coordinate-global-docs
- `--level=profile` → manage-profile-docs
- `--level=project` → coordinate-project-docs

**Examples**:
```bash
/doc coordinate --level=project
/doc coordinate --level=global
```

### organize
Organize multi-agent documentation and workflows.

**Usage**:
```bash
/doc organize [--scope=<scope>]
```

**Skills invoked**: organize-agents

**Examples**:
```bash
/doc organize
/doc organize --scope=project
```

## Common Workflows

### Creating New Documentation
```bash
# Human-readable project README
/doc write --audience=human --level=project

# AI-optimized AGENTS.md
/doc write --audience=machine --level=agent

# Team collaboration doc in Notion
/doc write --audience=team
```

### Maintaining Existing Documentation
```bash
# Regular maintenance
/doc maintain

# Optimize for token efficiency
/doc optimize

# Verify agent documentation completeness
/doc curate
```

### Publishing Documentation
```bash
# Publish to Notion
/doc publish --platform=notion

# Publish to GitHub
/doc publish --platform=github
```

### Coordinating Large Documentation Sets
```bash
# Coordinate project documentation
/doc coordinate --level=project

# Optimize global documentation
/doc coordinate --level=global

# Organize multi-agent workflows
/doc organize
```

## Configuration

Configuration files in `config/`:
- `hierarchy-rules.json` - Hierarchical organization rules
- `audience-profiles.json` - Audience-specific standards
- `platform-config.json` - Platform publishing settings

## Related

- Plugin: phil-ai-docs
- Skills: 13 specialized documentation skills
- Integration: phil-ai-context (for AGENTS.md optimization)

## Help

For detailed help on any subcommand:
```bash
/doc [subcommand] --help
```
