## TODO

- [x] make necessary MCP work (playwright for web ui access, context7 for docs)
- [ ] set up hooks for linting
- [x] set up custom slash command `/tech_specs` and `/feature_specs`
- [ ] implement lint and notifier hook <https://chatgpt.com/share/6873341a-a0bc-800c-b257-76c0b7ad5767>
- [ ] set up the universal claude.md and custom slash command inspired by [this dude](https://github.com/Veraticus/nix-config/tree/main/home-manager/claude-code)
- delete the nice tone portion in e_reader claude
- global claude.md
  - contructive critisism tone <https://mp.weixin.qq.com/s/ZoFW6ZznKGxR7jR0U6Vi4w>
  - research, plan, code cycle
- [ ] change the prompt referencing method
  - a AGENT/ that symlink to prompts dir
  - in the repo wise claude.md file, use @AGENT/xxxxx to reference instructions

### squad refactor using kiro

- [ ] maybe add a namespace `squad` to all these commands
- [ ] throw in the ultra_think prompt to tech/feature specs custom command
- [ ] 3 files in total: tech_specs.md feature_specs.md tasks_specs.md ARCH.md
- [ ] winthin 3 files, sepearte each section using `## vX.X.X`
- [ ] change the content inside `/tech_specs` and `/feature_specs` to make it more suitable for custom slash. make sure they look for information written in `/squad` dir. take inspirations from kiro for the content of the files generated
- [ ] have a `/task_specs` that writes to a `tasks.md` file
- [ ] ARCH.md, let the tech squad look at this and update this. as for content, refer to kiro file content

## future plan

- [ ] add context7 mcp usage into claude.md
