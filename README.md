# agents-documentation-suite

A Claude Code plugin for hierarchical documentation management with audience specialization (human/machine/team/public) and multi-platform publishing.

## Features

- **Audience Specialization**: Optimize docs for humans, AI agents, teams, or public
- **Hierarchical Organization**: Global → Profile → Project → Agent
- **Token Efficiency**: Machine-optimized docs within strict budgets
- **Multi-Platform Publishing**: Notion, GitHub, local markdown
- **13 Specialized Skills**: Writing, management, optimization, orchestration
- **Single Command Interface**: `/doc` with subcommands

## Installation

### Via agents-marketplace (Recommended)

```bash
# Add the marketplace
/plugin marketplace add pjbeyer/agents-marketplace

# Install the plugin
/plugin install agents-documentation-suite@agents-marketplace
```

### Direct Installation

```bash
/plugin marketplace add pjbeyer/agents-documentation-suite
/plugin install agents-documentation-suite@agents-documentation-suite
```

## Command: `/doc`

Single command with multiple subcommands for all documentation needs.

### Write Documentation

```bash
# Human-readable guide
/doc write --audience=human --level=project

# AI-optimized AGENTS.md
/doc write --audience=machine --level=agent

# Team collaboration doc
/doc write --audience=team

# Public-facing documentation
/doc write --audience=public
```

### Maintain Documentation

```bash
# Update and verify all docs
/doc maintain

# Maintain specific scope
/doc maintain --scope=project
```

### Optimize Documentation

```bash
# Optimize AGENTS.md for token efficiency
/doc optimize

# Optimize specific file
/doc optimize --target=~/Projects/work/AGENTS.md
```

### Publish Documentation

```bash
# Publish to Notion
/doc publish --platform=notion

# Publish to GitHub
/doc publish --platform=github

# Publish to local markdown
/doc publish --platform=local
```

### Curate Agent Documentation

```bash
# Verify agent doc completeness
/doc curate

# Curate specific agent
/doc curate --agent=~/Projects/work/agents/scanner
```

### Coordinate Documentation

```bash
# Coordinate project docs
/doc coordinate --level=project

# Coordinate global docs
/doc coordinate --level=global
```

### Organize Multi-Agent Systems

```bash
# Organize agent teams and workflows
/doc organize
```

## Audience Specialization

### Human Audience
**Goal**: Comprehension and learning
**Style**: Friendly, clear, comprehensive
**Examples**: User guides, tutorials, README files

### Machine Audience
**Goal**: Token efficiency and quick access
**Style**: Concise, structured, hierarchical
**Token Budgets**:
- Global AGENTS.md: 8-12k characters
- Profile AGENTS.md: 5-8k characters
- Project AGENTS.md: 4-6k characters
- Agent AGENTS.md: 2-6k characters

### Team Audience
**Goal**: Collaboration and process integration
**Style**: Action-oriented, scannable, cross-referenced
**Platform**: Primarily Notion

### Public Audience
**Goal**: Professional presentation and completeness
**Style**: Polished, comprehensive, zero errors
**Examples**: Open source docs, client deliverables, public APIs

## Hierarchical Organization

### Global Level (`~/Projects`)
Cross-profile patterns, environment setup, profile management

### Profile Level (`~/Projects/{profile}`)
Profile philosophy, standards, tech stack, workflows

### Project Level (`~/Projects/{profile}/{project}`)
Project architecture, agent registry, routing, integrations

### Agent Level (`~/Projects/{profile}/{project}/agents/{agent}`)
Agent specification, workflows, integration points, sub-agents

## Skills

### Writing Skills (5)
- **write-human-docs**: Human-readable documentation
- **write-machine-docs**: AI-optimized AGENTS.md files
- **write-team-docs**: Team collaboration in Notion
- **write-public-docs**: Professional external documentation
- **write-docs**: General documentation writing

### Management Skills (3)
- **maintain-docs**: Updates, cross-references, version tracking
- **publish-docs**: Multi-platform publishing (Notion/GitHub/local)
- **manage-profile-docs**: Profile-level documentation management

### Optimization Skills (2)
- **optimize-docs**: Token efficiency and clarity improvements
- **curate-agent-docs**: Agent documentation completeness

### Orchestration Skills (3)
- **coordinate-project-docs**: Project-level coordination
- **coordinate-global-docs**: Global-level coordination
- **organize-agents**: Multi-agent system documentation

## Configuration

Three configuration files define behavior:

### `hierarchy-rules.json`
- Token budgets per level
- Content placement rules
- Extraction guidelines
- Organization principles

### `audience-profiles.json`
- Writing styles per audience
- Quality metrics
- Document types
- Token budgets

### `platform-config.json`
- Platform-specific formatting
- Publishing workflows
- Access control
- Cross-platform linking

## Integration with Other Plugins

### agents-learning-system
- Document learnings become documentation improvements
- Closed-loop tracking for doc updates

### agents-context-system
- AGENTS.md optimization
- Hierarchical context loading
- MCP configuration documentation

## Philosophy

### Documentation-First
Documentation is not an afterthought—it's essential context for both humans and AI agents.

### Hierarchical Organization
Information exists at exactly one level. Lower levels reference, not duplicate, higher levels.

### Audience-Appropriate
Different audiences need different styles. Optimize for the reader, whether human or machine.

### Token Efficiency
For machine-readable docs, every token counts. Extract detail to /docs/, keep essentials in AGENTS.md.

### Multi-Platform
Publish where your audience is: Notion for teams, GitHub for open source, local for AI context.

## Development

### Structure
```
agents-documentation-suite/
├── .claude-plugin/
│   └── plugin.json
├── skills/
│   ├── writing/          # 5 writing skills
│   ├── management/       # 3 management skills
│   ├── optimization/     # 2 optimization skills
│   └── orchestration/    # 3 orchestration skills
├── commands/
│   └── doc.md            # Main command
├── config/
│   ├── hierarchy-rules.json
│   ├── audience-profiles.json
│   └── platform-config.json
└── docs/
    └── README.md
```

### Testing Locally

1. Create development marketplace:
```json
{
  "name": "dev",
  "plugins": [{
    "name": "agents-documentation-suite",
    "source": "./"
  }]
}
```

2. Install for testing:
```bash
/plugin marketplace add /path/to/agents-documentation-suite
/plugin install agents-documentation-suite@dev
```

3. Restart Claude Code and test commands

## Examples

See the architecture document for comprehensive examples of each documentation type and workflow.

## License

MIT License - see LICENSE file for details

## Author

Paul Beyer <paul@pjbeyer.com>

## Repository

https://github.com/pjbeyer/agents-documentation-suite

## Version

1.0.0
