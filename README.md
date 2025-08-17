# claude code stuff

## how to use

1. clone the repo:

```bash
cd <prompt-repo-dir>
export PROMPT_REPO_PATH=$(pwd)
```

2. set global `CLAUDE.md`:

```bash
mv ~/.claude/CLAUDE.md ~/.claude/CLAUDE.md.bak
ln -s $PROMPT_REPO_PATH/CLAUDE.md ~/.claude/CLAUDE.md
```

3. set global hook with `settings.json`
```bash
mv ~/.claude/settings.json ~/.claude/settings.json.bak
ln -s $PROMPT_REPO_PATH/settings.json ~/.claude/settings.json

ln -s $PROMPT_REPO_PATH/hook_scripts ~/.claude/hook_scripts
```

3. repo-wise claude code slash command settings

```bash
cd <repo-that-you-care>
ln -s $PROMPT_REPO_PATH ./AGENTS

mv .claude/commands .claude/commands.bak
ln -s ../AGENTS/commands .claude/commands

```
