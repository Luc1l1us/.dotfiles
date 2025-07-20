#!/bin/bash

config_dir="$HOME/.config/waybar"
profile_path="$config_dir/profiles"
ln_conf="$config_dir/config.jsonc"
ln_style="$config_dir/style.css"
ln_hyprland=$config_dir/hyprland.conf

# lists profile folders
profiles=($(find "$profile_path" -maxdepth 1 -mindepth 1 -type d -exec basename {} \;))

if [[ ${#profiles[@]} -eq 0 ]]; then
  echo "No profiles found in $profile_path"
  exit 1
fi

change_waybar() {
  echo "Available profiles: "
  select profile in "${profiles[@]}"; do
    if [[ -n "$profile" ]]; then
      prof_path="$profile_path/$profile"
      conf_path="$prof_path/config.jsonc"
      style_path="$prof_path/style.css"
      hyprland_path=$prof_path/hyprland.conf

      if [[ ! -f "$conf_path" || ! -f "$style_path" || ! -f "$hyprland_path" ]]; then
        echo "Error! Config.jsonc, Style.css or hyprland.conf not found!"
        exit 1
      fi

      # Symlinks time
      ln -sf "$conf_path" "$ln_conf"
      ln -sf "$style_path" "$ln_style"
      ln -sf "$hyprland_path" "$ln_hyprland"

      echo "Switched to profile: $profile"
      echo "config -> "$ln_conf
      echo "style -> "$ln_style
      echo "hyprland_conf -> "$ln_hyprland

      break
    else
      echo "Invalid Selection."
    fi
  done
}

change_waybar
killall waybar
waybar &
