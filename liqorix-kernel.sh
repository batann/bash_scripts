#!/bin/bash
curl -s 'https://liquorix.net/install-liquorix.sh' | sudo bash
grub-mkconfig -o /boot/grub/grub.cfg
