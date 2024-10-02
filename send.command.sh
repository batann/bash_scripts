#!/usr/bin/env sh


Green='\033[0;32m'
Cyan='\033[0;36m'
Yellow='\033[1;33m'
NC='\033[0m'

# Create a temporary script file
TMP_SCRIPT=$(mktemp /tmp/countdown_script.XXXXXX)
cat << 'EOL' > "$TMP_SCRIPT"
#!/usr/bin/env bash
options=("1" "2" "4")
select panel in ${options[@]};
do clear
	read -p '   >>>   ' abc
	tmux send-keys -t$panel $abc Enter
done


EOL
/usr/bin/xterm -geom 70x4+0+0 -e "sudo -u batan bash $TMP_SCRIPT"
