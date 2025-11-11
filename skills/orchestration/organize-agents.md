---
name: organize-agents
description: Organize multi-agent documentation and workflows including team assembly, task distribution, and coordination strategies. Masters agent orchestration documentation.
---

# Agent Organization Skill

Document and organize multi-agent systems, including agent relationships, task distribution, and coordination patterns.

## Organization Scope

### 1. Agent Teams
Document related agents:
- Team purpose
- Team members (agents)
- Task distribution
- Coordination patterns
- Shared resources

### 2. Agent Hierarchies
Parent-child relationships:
- Parent agent purpose
- Sub-agent list
- Delegation patterns
- Communication flow
- Result aggregation

### 3. Agent Workflows
Multi-agent processes:
- Workflow steps
- Agent responsibilities
- Handoff points
- Data flow
- Error handling

### 4. Agent Coordination
How agents work together:
- Communication patterns
- Shared context
- Conflict resolution
- Resource sharing
- Synchronization points

## Documentation Patterns

### Agent Team Documentation
```markdown
## [Team Name] Agent Team

### Purpose
[What this team accomplishes]

### Team Members
- **Agent 1**: [Primary responsibility]
- **Agent 2**: [Primary responsibility]
- **Agent 3**: [Primary responsibility]

### Task Distribution
- [Task type]: → Agent 1
- [Task type]: → Agent 2
- [Task type]: → Agent 3

### Coordination Pattern
[How agents coordinate]

### Shared Resources
[What they share]
```

### Agent Hierarchy Documentation
```markdown
## [Parent Agent]

### Sub-Agents
1. **Sub-agent 1**: [Specialized task]
2. **Sub-agent 2**: [Specialized task]
3. **Sub-agent 3**: [Specialized task]

### Delegation Pattern
Parent receives [input] →
- Analyzes and determines sub-agent
- Delegates to appropriate sub-agent
- Aggregates results
- Returns to caller

### Communication Flow
[How parent and sub-agents communicate]
```

### Multi-Agent Workflow Documentation
```markdown
## [Workflow Name]

### Agents Involved
- Agent A: [Role]
- Agent B: [Role]
- Agent C: [Role]

### Workflow Steps
1. Agent A: [Action] → Result to Agent B
2. Agent B: [Action] → Result to Agent C
3. Agent C: [Action] → Final output

### Handoff Points
- A → B: [Data format, conditions]
- B → C: [Data format, conditions]

### Error Handling
[How errors are handled at each step]
```

## Organization Tasks

### Identify Agent Relationships
Map connections between agents:
- Parent-child relationships
- Peer collaborations
- Sequential workflows
- Parallel processing patterns
- Resource dependencies

### Document Task Distribution
Clear responsibilities:
- Which agent for which task
- Decision criteria
- Edge case handling
- Default routing
- Escalation paths

### Define Coordination Patterns
How agents work together:
- Synchronous vs asynchronous
- Message passing patterns
- Shared state management
- Conflict resolution
- Result aggregation

### Optimize Agent Teams
Improve efficiency:
- Remove redundant agents
- Consolidate overlapping responsibilities
- Clarify ambiguous routing
- Improve handoff efficiency
- Reduce coordination overhead

## Quality Checklist

- ✓ All agent relationships documented
- ✓ Task distribution clear
- ✓ Coordination patterns defined
- ✓ Handoff points specified
- ✓ Error handling documented
- ✓ No ambiguous routing
- ✓ Team purposes clear
- ✓ Redundancies removed

## Integration

Invoked by:
- Multi-agent system setup
- Agent team optimization
- Workflow documentation
- Coordination pattern reviews
