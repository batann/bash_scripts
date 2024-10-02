
#!/bin/bash
 sudo apt install git make gcc g++ libx11-dev libxft-dev libxinerama-dev ncurses dbus-x11
cd /tmp
git clone https://git.suckless.org/dwm
    cd dwm
sudo make clean install
   cd ..
   git clone https://git.suckless.org/dmenu
 cd dmenu
sudo make clean install
   cd ..
   git clone https://git.suckless.org/st
 cd st
sudo  make clean install
   cd
   echo "exec dwm">>.initrc
   echo "startx" >>.profile


