# Example: Complete Documentation Workflow

## Scenario

Implementing a new authentication API and ensuring documentation stays current.

## Steps

### 1. Start Implementation

```bash
cd ~/Projects/work/api-service
/work-start "Add JWT authentication API"
# Creates: Issue #45, Branch feature/jwt-auth
```

### 2. Implement Feature

```bash
# Add authentication endpoints
cat > src/auth/jwt.ts <<'EOF'
export class JWTAuth {
  public authenticate(credentials: Credentials): Token {
    // Implementation
  }

  public validateToken(token: Token): boolean {
    // Implementation
  }
}
EOF

git add src/auth/jwt.ts
git commit -m "feat: add JWT authentication service"
```

### 3. Complete Implementation

```bash
/work-finish
# Output:
# ✓ Issue #45 closed
#
# Checking for documentation impact...
# DOC_IMPACT_DETECTED
#   - New public APIs or classes detected
#   - API or endpoint changes detected
#
# ⚠️  Documentation may need updating.
# Create documentation issue? (y/n): y
#
# Created documentation issue: https://github.com/.../issues/46
# ✓ Branch deleted
```

### 4. Update Documentation

```bash
/work-resume jwt-auth-documentation
# Checks out: docs/jwt-auth-documentation branch

# Write documentation
/doc write --audience=public --target=docs/api/authentication.md

# Review before publishing
/doc review --target=docs/api/authentication.md
# Output:
# ✓ Writing quality: Clear and concise
# ✓ Completeness: All sections present
# ✓ Technical accuracy: API signatures correct
# ✓ Audience: Appropriate for public docs
#
# Approved for publishing

# Publish to multiple platforms
/doc publish --platform=github --target=docs/api/authentication.md
/doc publish --platform=notion --target=docs/api/authentication.md

git add docs/api/authentication.md
git commit -m "docs: add JWT authentication API documentation"

/work-finish
# ✓ Issue #46 closed
```

### 5. Optimize AGENTS.md

```bash
# Run periodic optimization check
/optimize-agents

# Output:
# Analyzing AGENTS.md files...
#
# VIOLATION: agents/auth-agent/AGENTS.md
# Current: 7,200 chars | Budget: 6,000 chars | Over: 1,200 (20%)
#
# Create optimization issue? (y/n): y
#
# Created: Issue #47 - Optimize AGENTS.md: auth-agent

# Work on optimization
/work-resume optimize-auth-agent-agents-md

/doc optimize --target=agents/auth-agent/AGENTS.md
# Extracts details to docs/, adds references

/work-finish
```

## Result

- ✅ Feature implemented and documented
- ✅ Documentation tracked via issues
- ✅ Quality review passed
- ✅ AGENTS.md within budget
- ✅ Published to GitHub and Notion
- ✅ Zero documentation debt
