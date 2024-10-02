#!/bin/bash

options=(
"lc-cd"
"hosts"
)
select package in ${options[@]};
	git clone $package
	sudo -u batan bash $package/install.sh
done


