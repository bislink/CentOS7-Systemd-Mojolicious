#!/usr/bin/sh

hypnotoad /app/perlmojo/script/perlmojo

systemctl start mariadb

systemctl start httpd

wget --spider --tries 1 --no-check-certificate https://gap.a1z.us:7312

wget --spider --tries 1 --no-check-certificate https://gap.a1z.us:7318