# coding agents config

- clone the repo:

```bash
cd prompts
export PROMPT_REPO_PATH=$(pwd)
```

## claude code

1. set global claude settings:

```bash
# Ensure Claude's state dir exists (CLI writes runtime files here)
mkdir -p "$HOME/.claude"

# Link only curated configs into ~/.claude
stow -vt "$HOME/.claude" -d "$PROMPT_REPO_PATH/claude/.claude" commands hook_scripts

# Link file items (stow operates on directories)
ln -sf "$PROMPT_REPO_PATH/claude/.claude/CLAUDE.md" "$HOME/.claude/CLAUDE.md"
ln -sf "$PROMPT_REPO_PATH/claude/.claude/settings.json" "$HOME/.claude/settings.json"
```

2. repo-wise claude code slash command settings

```bash
cd target_repo
export TARGET_REPO=$(pwd)

# Optionally back up existing commands
[ -d "$TARGET_REPO/.claude/commands" ] && mv "$TARGET_REPO/.claude/commands" "$TARGET_REPO/.claude/commands.bak"

# Use stow to link the commands package into this repo's .claude
# -d points stow at the package dir containing "commands"
stow -vt "$TARGET_REPO/.claude" -d "$PROMPT_REPO_PATH/claude/.claude" commands
```

3. hooks settings

```bash
mv $TARGET_REPO/.claude/settings.json $TARGET_REPO/.claude/settings.json.bak
ln -s $TARGET_REPO/AGENTS/settings.json $TARGET_REPO/.claude/settings.json
```

## codex

```bash
# Ensure Claude's state dir exists (CLI writes runtime files here)
mkdir -p "$HOME/.codex"

# Link only curated configs into ~/.claude
ln -sf "$PROMPT_REPO_PATH/codex/.codex/AGENTs.md" "$HOME/.codex/AGENTS.md"
ln -sf "$PROMPT_REPO_PATH/codex/.codex/config.toml" "$HOME/.codex/config.toml"
```
