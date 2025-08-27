# claude code stuff

## how to use

1. clone the repo:

```bash
cd prompts
export PROMPT_REPO_PATH=$(pwd)
```

2. set global claude settings:

```bash
stow -vt ~ claude
```

3. repo-wise claude code slash command settings

```bash
cd target_repo
export TARGET_REPO=$(pwd)

# Optionally back up existing commands
[ -d "$TARGET_REPO/.claude/commands" ] && mv "$TARGET_REPO/.claude/commands" "$TARGET_REPO/.claude/commands.bak"

# Use stow to link the commands package into this repo's .claude
# -d points stow at the package dir containing "commands"
stow -vt "$TARGET_REPO/.claude" -d "$PROMPT_REPO_PATH/claude/.claude" commands
```

4. hooks settings

```bash
mv $TARGET_REPO/.claude/settings.json $TARGET_REPO/.claude/settings.json.bak
ln -s $TARGET_REPO/AGENTS/settings.json $TARGET_REPO/.claude/settings.json
```
