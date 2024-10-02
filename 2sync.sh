#!/bin/bash
clear
echo "Location to Copy to..."
read -p '>>>   ' aa2

clear
options=("1" "10" "100" "dot" "check")
select aa1 in ${options[@]};
do
	tar cf - $aa1 -P | pv -s $(du -sb $aa1 | awk '{print $1}') | gzip > $aa2$aa1.tar.gz
done

