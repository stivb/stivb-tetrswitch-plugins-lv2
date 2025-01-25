#!/bin/sh

sudo mkdir -p /usr/lib/lv2/tetr4-switch.lv2
sudo cp -r ./resources/tetr4-switch.lv2/* /usr/lib/lv2/tetr4-switch.lv2/

uRi="http://srmourasilva.github.io/plugins/tetr4-switch"
echo "****************--------------$uRi--------------***********************"

sleep .5
catia &
jalv.gtk3 $uRi &
midisnoop &
sleep 1
jack-keyboard
