# Commands run from inside the container as root

yum -y install httpd bind postfix cyrus-imapd* mod_ssl
systemctl enable httpd
systemctl start httpd

All updated/uploaded to repo: https://hop.a1z.us:5084/root_gap/container-c7-gap-a1z-us

[root@c7 app]# cp perlmojo/public/images/icons/*.png /var/www/html/images/icons

