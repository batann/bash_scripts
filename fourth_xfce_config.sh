#!/bin/bash
megaget /Root/config.tar.gz
mv /home/batan/.config/autostart /home/batan/.config/autostart.bak
mv /home/batan/.config/bleachbit /home/batan/.config/bleachbit.bak
mv /home/batan/.config/chromium /home/batan/.config/chromium.bak
mv /home/batan/.config/falkon /home/batan/.config/falkon.bak
mv /home/batan/.config/featherpad /home/batan/.config/featherpad.bak
mv /home/batan/.config/gtk-2.0 /home/batan/.config/gtk-2.0.bak
mv /home/batan/.config/gtk-3.0 /home/batan/.config/gtk-3.0.bak
mv /home/batan/.config/MX-Linux /home/batan/.config/MX-Linux.bak
mv /home/batan/.config/nvim /home/batan/.config/nvim.bak
mv /home/batan/.config/ranger /home/batan/.config/ranger.bak
mv /home/batan/.config/rofi /home/batan/.config/rofi.bak
mv /home/batan/.config/Thunar /home/batan/.config/Thunar.bak
mv /home/batan/.config/xfce4 /home/batan/.config/xfce4.bak
mv /home/batan/.config/xfce-superkey /home/batan/.config/xfce-superkey.bak
tar vfxz config.tar.gz --directory /home/batan/.config/
clear
tput cup 10 20
echo "DONE"
read -n1 -p 'Enter [ANY] to Exit'


