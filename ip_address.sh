show_ip_address() {
  local index icon color text module

  index=$1
  icon="$(  get_tmux_option "@catppuccin_ip_address_icon"  "󰩟"           )"
  color="$( get_tmux_option "@catppuccin_ip_address_color" "$thm_red" )"
  text="$(  get_tmux_option "@catppuccin_ip_address_text"  "#{ip_address} | #H" )"

  module=$( build_status_module "$index" "$icon" "$color" "$text" )

  echo "$module"
}

