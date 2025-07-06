`./claude_code_pm_for_side_project.xml`
- this prompt allow claude code to help exploring next feature to build for a side project (me as the primary user)
- do the following to set it up

```bash
cd side_project_dir 
mkdir -p ./feature_spec && cd ./feature_spec
ln -s $HOME/code/prompts/claude_code_pm_for_side_project.xml ./CLAUDE.md
claude ## ask away
```




