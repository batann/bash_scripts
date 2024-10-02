

ggrups=(cdrom floppy sudo audio dip video plugdev netdev bluetooth lpadmin scanner docker autologin)





clear
tput civis
tput 10 20
read -t 10 -p 'Enter user name   >>>   ' username
tput cup 10 20
tput el
tput cups 10 20
read -t 10 -p 'Enter expiry date   >>>   ' edate
tput cup 10 20
tput el
tput cups 10 20
read -t 10 -p 'Enter password for ${Yellow}$username${NC}   >>>   ' edate


sudo useradd -r -m -e $edate $username
