show_up_time() {
  local index icon color text module

  index=$1
  icon="$(  get_tmux_option "@catppuccin_ip_address_icon"  ""           )"
  color="$( get_tmux_option "@catppuccin_ip_address_color" "$thm_green" )"
  text="$(  get_tmux_option "@catppuccin_ip_address_text"  "#(uptime -p | sed -E 's/up ([0-9]+) days?, ([0-9]+) hours?, ([0-9]+) minutes?/\1d\2h\3m/')" )"

  module=$( build_status_module "$index" "$icon" "$color" "$text" )

  echo "$module"
}

