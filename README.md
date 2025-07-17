# claude code stuff

## how to use

1. clone the repo:

```bash
cd <prompt-repo-dir>
export PROMPT_REPO_PATH=$(pwd)
```

2. global `claude.md`: `ln -s ~/`

```bash
mv ~/.claude/CLAUDE.md ~/.claude/CLAUDE.md.bak
ln -s $PROMPT_REPO_PATH/CLAUDE.md ~/.claude/CLAUDE.md
```

3. repo-wise claude code slash command settings

```bash
cd <repo-that-you-care>
ln -s $PROMPT_REPO_PATH/CLAUDE.md ./AGENTS

ln -s .claude/commands ./AGENTS/commands
mv .claude/commands .claude/commands.bak
ln -s .claude/commands ./AGENTS/commands

```
