#!/bin/dash

# ^c$var^ = fg color
# ^b$var^ = bg color

interval=0

# load colors
. ~/.config/dwm/bar_themes/catppuccin

cpu() {
  cpu_val=$(grep -o "^[^ ]*" /proc/loadavg)

  printf "^c$red^  "
  printf "^c$red^$cpu_val"
}

mem() {
  printf "^c$mauve^  "
  printf "^c$mauve^$(free -h | awk '/^Mem/ { print $3 }' | sed s/i//g)"
}

wlan() {
	if [ "$(cat /sys/class/net/en*/operstate 2>/dev/null)" = "up" ]; then
		printf "^c$green^ 󰈀^d^%s"
		return
	fi

	case "$(cat /sys/class/net/wl*/operstate 2>/dev/null)" in
		up)   printf "^c$green^ 󰤨^d^%s" ;;
		down) printf "^c$red^ 󰤭^d^%s" ;;
	esac
}

audio() {
  output=$(wpctl get-volume @DEFAULT_SINK@)
  volume=$(echo "$output" | sed -E 's/Volume: ([0-9.]+).*/\1/' | awk '{printf "%.0f%%", $1 * 100}')
  if echo "$output" | grep -q "\[MUTED\]"; then
    echo "^c$peach^  $volume"
  else
  echo "^c$peach^  $volume"
fi
}

clock() {
	printf "^c$blue^ 󱑆"
	printf "^c$blue^ $(date '+%H:%M')"
}

cal() {
  printf "^c$lavender^ "
  printf "^c$lavender^ $(date '+%Y-%m-%d')"
}

while true; do

  [interval = 0 ] || [ $(($interval % 3600)) = 0 ]
  interval=$((interval + 1))
  
  sleep 1 && xsetroot -name " $(cpu) $(mem) $(wlan) $(audio) $(clock) $(cal) "
done
