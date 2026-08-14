#!/bin/sh
# Close the currently focused window. Hyprland 0.56 window.close() is a no-op
# here, and a dispatch without an explicit address often misses after Super.

ADDR=$(hyprctl activewindow -j 2>/dev/null | python3 -c 'import json,sys
try:
    print(json.load(sys.stdin).get("address") or "")
except Exception:
    print("")')

if [ -z "$ADDR" ] || [ "$ADDR" = "null" ]; then
    notify-send -t 2000 "Hyprland" "No hay ventana activa"
    exit 1
fi

hyprctl dispatch "hl.dsp.window.signal({ signal = 15, window = \"address:${ADDR}\" })"
sleep 0.15

STILL=$(hyprctl clients -j 2>/dev/null | python3 -c "import json,sys
cs=json.load(sys.stdin)
print(any(c.get('address')=='''${ADDR}''' for c in cs))")

if [ "$STILL" = "True" ]; then
    hyprctl dispatch "hl.dsp.window.kill({ window = \"address:${ADDR}\" })"
fi
