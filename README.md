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
ln -s $PROMPT_REPO_PATH $TARGET_REPO/AGENTS

mv $TARGET_REPO/.claude/commands $TARGET_REPO/.claude/commands.bak
ln -s $TARGET_REPO/AGENTS/commands $TARGET_REPO/.claude/commands
```

4. hooks settings

```bash
mv $TARGET_REPO/.claude/settings.json $TARGET_REPO/.claude/settings.json.bak
ln -s $TARGET_REPO/AGENTS/settings.json $TARGET_REPO/.claude/settings.json
```
