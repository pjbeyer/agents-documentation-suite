---
name: doc-review
description: Review documentation for quality, completeness, and accuracy
---

# Review Documentation

Review documentation using superpowers doc-reviewer agent.

## Usage

```bash
# Review specific file
/doc review --target=README.md

# Review with context
/doc review --target=docs/api.md --type=public
```

## Process

1. Load document
2. Detect document type (human/machine/team/public)
3. Dispatch doc-reviewer subagent
4. Present review results
5. Offer to fix issues if needed

## Implementation

Use the Task tool with subagent_type='doc-reviewer':

```bash
# Detect document type from path
if [[ "$target" == *"AGENTS.md" ]]; then
    doc_type="machine"
elif [[ "$target" == *"README"* ]]; then
    doc_type="human"
elif [[ "$target" == *"/api/"* ]] || [[ "$target" == *"/reference/"* ]]; then
    doc_type="public"
else
    doc_type="${type:-human}"
fi

# Dispatch doc-reviewer
Use Task tool:
- subagent_type: "doc-reviewer"
- prompt: "Review ${target} for ${doc_type} audience. Check writing quality, completeness, technical accuracy, and audience appropriateness. Provide specific recommendations."
- description: "Review documentation quality"
```

## Arguments

- `--target`: Path to document (required)
- `--type`: Document type (human|machine|team|public)
- `--fix`: Auto-fix issues without prompting

## Examples

```bash
# Review README
/doc review --target=README.md

# Review AGENTS.md with auto-fix
/doc review --target=AGENTS.md --type=machine --fix

# Review public API docs
/doc review --target=docs/api/reference.md --type=public
```

## Output

Presents review from doc-reviewer agent including:
- Overall assessment
- Issues categorized by severity (critical/important/minor)
- Writing quality feedback
- Specific recommendations
- Approval status

## Integration

- Invokes superpowers:doc-reviewer agent
- Uses elements-of-style for writing quality
- Validates against audience-specific standards
- Offers to apply fixes if issues found
