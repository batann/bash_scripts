ipArray=("192.168.1.35" "192.168.1.36" "192.168.1.37" "192.168.1.38" "192.168.1.39" "192.168.1.40")
my_ip=$(hostname -I|cut -c 1-13)

for ip in ${ipArray[@]}; do
	if [[ $ip -eq $my_ip ]];then
		echo "lol"
	fi

	if ping -c 2 -s 90  $ip > /dev/null 2>&1; then


