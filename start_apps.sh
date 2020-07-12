#!/usr/bin/sh

hypnotoad /app/perlmojo/script/perlmojo

systemctl start mariadb

systemctl enable httpd
systemctl start httpd

