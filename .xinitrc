nitrogen --restore &
picom &
while true; do
    DATE=$(date +'%H:%M:%S %a %b %d')
    VOL="$(pactl list sinks | grep '^[[:space:]]Volume:' | \
    head -n $(( $SINK + 1 )) | tail -n 1 | sed -e 's,.* \([0-9][0-9]*\)%.*,\1,')"
    BAT="$(cat /sys/class/power_supply/BAT0/capacity)"
    xsetroot -name " 🮤 $DATE 🮤 🔋  $BAT 🮤 🕨 $VOL 🮤 "
    sleep 1
done &
dunst &
pipewire &
exec wpa_gui &
exec flameshot &
exec dbus-run-session dwm 
