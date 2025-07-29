## TODO

- [x] make necessary MCP work (playwright for web ui access, context7 for docs)
- [ ] set up hooks for linting
- [x] set up custom slash command `/tech_specs` and `/feature_specs`
- [ ] implement lint and notifier hook <https://chatgpt.com/share/6873341a-a0bc-800c-b257-76c0b7ad5767>
- delete the nice tone portion in e_reader claude
- [ ] change the prompt referencing method
  - a AGENT/ that symlink to prompts dir
  - in the repo wise claude.md file, use @AGENT/xxxxx to reference instructions
- [x] set up the universal claude.md and custom slash command inspired by [this dude](https://github.com/Veraticus/nix-config/tree/main/home-manager/claude-code)
- delete the nice tone portion in e_reader claude
- global claude.md
  - [x] contructive critisism tone <https://mp.weixin.qq.com/s/ZoFW6ZznKGxR7jR0U6Vi4w>
  - [x] research, plan, code cycle

### squad refactor using kiro

- [x] maybe add a namespace `squad` to all these commands
- [x] throw in the ultra_think prompt to tech/feature specs custom command
- [x] add $argument as (vx.x.x), then make claude ask what to do in the first step of interaction_loop

- [x] 3 files in total: tech_specs.md feature_specs.md tasks_specs.md ARCH.md
- [x] winthin 3 files, sepearte each section using `## vX.X.X`
- [x] change the content inside `/tech_specs` and `/feature_specs` to make it more suitable for custom slash. make sure they look for information written in `/squad` dir. take inspirations from kiro for the content of the files generated
- [x] have a `/task_specs` that writes to a `tasks.md` file


- [ ] custom commands: review version - make sure all technical specification in v$ARGUMENT is implemented, read relevant code, update ARCHITECTURE.md
- [ ] custom commands: execute tasks

- [ ] how do we incorperate UI design files in tech design and task execution step
- [x] make the feature_specs short n sweet
- [x] tech spec is generating code. is this happening in kiro as well? i think it's better that we just generate psuedocode or function signiture here?

## future plan

- [ ] add context7 mcp usage into claude.md
