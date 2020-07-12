# Project updates/details##

## 2020 07 11 3:21 pm 

Successfully built 0b55d8bd81d4
Successfully tagged a2zdotblue/c7-systemd-perl-mojo-02:latest
Stopping container a2zdocker
a2zdocker
Deleting container a2zdocker
a2zdocker
d35b2e490495d20f590fc224be253427b90465165bf290d568be8b1edfdeb718
logging in to a2zdocker
[root@c7 app]# ls
perlmojo  start_apps.sh
[root@c7 app]# chmod +x start_apps.sh
[root@c7 app]# ./start_apps.sh
[Sat Jul 11 20:13:54 2020] [info] Listening at "http://*:7311"
Server available at http://127.0.0.1:7311
IO::Socket::SSL 2.009+ required for TLS support at /usr/local/share/perl5/Mojo/IOLoop.pm line 130.
[root@c7 app]# which perl
/usr/bin/perl
[root@c7 app]#

## 3:53 

Successfully built fa8ed4ecbd0c
Successfully tagged a2zdotblue/c7-systemd-perl-mojo-02:latest
Stopping container a2zdocker
a2zdocker
Deleting container a2zdocker
a2zdocker
43cd171ae5c94276446bdb3049c68d2612170219bd64ed075054465a1bd4e341
logging in to a2zdocker
Attempting to create directory /root/perl5
[root@c7 app]# chmod +x start_apps.sh
[root@c7 app]# ./start_apps.sh
[Sat Jul 11 20:50:14 2020] [info] Listening at "http://*:7311"
Server available at http://127.0.0.1:7311
[Sat Jul 11 20:50:14 2020] [info] Listening at "https://*:7312?cert=%2Fapp%2Fcerts%2Fssl.cert&key=%2Fapp%2Fcerts%2Fssl.key"
Server available at https://127.0.0.1:7312
[root@c7 app]#

Could not access https://gap.a1z.us:7312/ probably due to certs not there ... 

Added certs

4:47

Successfully built 76906f544a3a
Successfully tagged a2zdotblue/c7-systemd-perl-mojo-02:latest
Stopping container a2zdocker
a2zdocker
Deleting container a2zdocker
a2zdocker
85e80f2a138a18dfa6ee144dca597d885fea2ae588fa82a9cb68520317fbaeb3
logging in to a2zdocker
Attempting to create directory /root/perl5
[root@c7 app]# ./start_apps.sh
[Sat Jul 11 21:45:42 2020] [info] Listening at "http://*:80"
Server available at http://127.0.0.1:80
[Sat Jul 11 21:45:42 2020] [info] Listening at "https://*:443?cert=%2Fapp%2Fcerts%2Fcert1.pem&key=%2Fapp%2Fcerts%2Fprivkey1.pem"
Server available at https://127.0.0.1:443
[root@c7 app]#

https://gap.a1z.us:7312/ OK but wrong certs ( expired )

5:24

https OK.
Mojolicious App home page improved - ok

5:52

Successfully built c8b3ebbb5a21
Successfully tagged a2zdotblue/c7-systemd-perl-mojo-02:latest
Stopping container a2zdocker
a2zdocker
Deleting container a2zdocker
a2zdocker
f46f07f71f9132c8997a8a041ce341f055af65d41b25c7813322010b58f3ae1b
logging in to a2zdocker
Attempting to create directory /root/perl5
[root@c7 app]# ./start_apps.sh
[Sat Jul 11 22:51:15 2020] [info] Listening at "http://*:80"
Server available at http://127.0.0.1:80
[Sat Jul 11 22:51:15 2020] [info] Listening at "https://*:443?cert=%2Fapp%2Fcerts%2Fcert2.pem&key=%2Fapp%2Fcerts%2Fprivkey2.pem"
Server available at https://127.0.0.1:443
[root@c7 app]#
[root@c7 app]# wget --spider --tries 1 https://gap.a1z.us:7312
Spider mode enabled. Check if remote file exists.
--2020-07-11 22:51:45--  https://gap.a1z.us:7312/
Resolving gap.a1z.us (gap.a1z.us)... 34.66.69.185
Connecting to gap.a1z.us (gap.a1z.us)|34.66.69.185|:7312... connected.
ERROR: cannot verify gap.a1z.us's certificate, issued by ‘/C=US/O=Let's Encrypt/CN=Let's Encrypt Authority X3’:
  Unable to locally verify the issuer's authority.
To connect to gap.a1z.us insecurely, use `--no-check-certificate'.

[root@c7 app]# wget --no-check-certificate --spider --tries 1 https://gap.a1z.us:7312
Spider mode enabled. Check if remote file exists.
--2020-07-11 22:51:57--  https://gap.a1z.us:7312/
Resolving gap.a1z.us (gap.a1z.us)... 34.66.69.185
Connecting to gap.a1z.us (gap.a1z.us)|34.66.69.185|:7312... connected.
WARNING: cannot verify gap.a1z.us's certificate, issued by ‘/C=US/O=Let's Encrypt/CN=Let's Encrypt Authority X3’:
  Unable to locally verify the issuer's authority.
HTTP request sent, awaiting response... 200 OK
Length: 7056 (6.9K) [text/html]
Remote file exists and could contain further links,
but recursion is disabled -- not retrieving.

[root@c7 app]#

