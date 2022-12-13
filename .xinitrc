# Remove energy saving
xset -dpms
# Remove screensaver
xset s off

xrdb -merge ~/.Xresources
exec i3
