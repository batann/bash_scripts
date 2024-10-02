#!/bin/bash

curl -Skw "\
CURL download testing\n\
=====================\n\
URL:                    %{url_effective}\n\
Response code:          %{response_code}\n\
Download size:          %{size_download}B\n\
Download speed:         %{speed_download}B/s\n\
Time connect:           %{time_connect}s\n\
Time name lookup:       %{time_namelookup}s\n\
Time pretransfer:       %{time_pretransfer}\n\
Time start transfer:    %{time_starttransfer}s\n\
Time redirect:          %{time_redirect}s\n\
Time total:             %{time_total}s\n" \
-Lo /dev/null --url \
https://ger.mirror.pkgbuild.com/iso/2020.02.01/archlinux-2020.02.01-x86_64.iso \
> curl-download-stats.log

