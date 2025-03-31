CURRENT_LAYOUT=$(hyprctl getoption general:layout | grep -oE '(dwindle|master)')

if [ "$CURRENT_LAYOUT" == "dwindle" ]; then
  hyprctl keyword general:layout master
else
  hyprctl keyword general:layout dwindle
fi
