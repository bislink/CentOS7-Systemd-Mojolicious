#!/usr/bin/sh
echo "Starting apps/services"
echo ""
hypnotoad /app/perlmojo/script/perlmojo
echo ""
systemctl start mariadb
echo ""
systemctl start httpd
echo ""
wget --spider --tries 1 --no-check-certificate https://gap.a1z.us:7312
echo "";
wget --spider --tries 1 --no-check-certificate https://gap.a1z.us:7318
echo ""
