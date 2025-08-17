wezterm_tab_name=$(wezterm cli list --format json | jq -r --arg pane "$WEZTERM_PANE" '.[] | select(.pane_id == ($pane|tonumber)) | .title')
claude_input_message=$(jq -r '.message')

dialog --notification \
  --title "claude code @ ${wezterm_tab_name}" \
  --message "${claude_input_message}"
