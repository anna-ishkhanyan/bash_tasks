#!/bin/bash

awk '1' passwd > passwd_new

awk -F: 'BEGIN{OFS=":"} $1=="saned"{$7="/bin/bash"}1' passwd_new > tmp && mv tmp passwd_new

sed -i '/^avahi:/s/\/usr\/sbin\/nologin/\/bin\/bash/' passwd_new

awk -F: '{print $1 ":" $3 ":" $5 ":" $7}' passwd_new > tmp && mv tmp passwd_new

sed -i '/daemon/d' passwd_new

awk -F: 'BEGIN{OFS=":"} ($3%2)==0{$7="/bin/zsh"}1' passwd_new > tmp && mv tmp passwd_new

awk '{printf "%s%s", (NR>1?"\n":""), $0}' passwd_new > tmp && mv tmp passwd_new
