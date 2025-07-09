`./claude_code_pm_for_side_project.md`

- this prompt allow claude code to help exploring next feature to build for a side project (me as the primary user)
- do the following to set it up
- make sure you use the claude thinking model since this prompt is [tailored for it](https://docs.anthropic.com/en/docs/build-with-claude/prompt-engineering/extended-thinking-tips)

```bash
mkdir -p side_project_dir/squads/feature_spec
ln -s claude_code_pm_for_side_project.xml side_project_dir/CLAUDE.md
cd side_project_dir/squads/feature_spec
claude ## ask away
```

---
`./custom_slash_commands_for_claude_code/`

- this prompt is the prompt for a custom slash command for claude code to use

```bash
ln -s custom_slash_commands_for_claude_code/commands side_project_dir/.claude/commands
```
