# a2zdotblue/c7-systemd-perl-mojo-02 on gap

# Build from image 
FROM a2zdotblue/c7-systemd-perl-mojo-02

LABEL "url"="c7.gap.a1z.us"

RUN yum -y update; yum -y install nano wget vim mariadb-server perl-CPAN perl-DateTime

RUN yum -y install perl-*; cpanm CPAN Cpanel::JSON::XS EV IO::Socket::Socks IO::Socket::SSL Net::DNS::Native Role::Tiny

WORKDIR /app

RUN rm -rf /app/perlmojo; rm -rf /app/Dockerfile 

COPY ./perlmojo /app/perlmojo
RUN rm -rf /app/perlmojo/.git
COPY ./start_apps.sh /app/start_apps.sh

RUN yum -y install httpd bind postfix cyrus-imapd* mod_ssl; rm -rf /etc/httpd/conf/httpd.conf; rm -rf /etc/httpd/conf.d/ssl.conf; chmod +x /app/start_apps.sh; 

COPY ./apache/httpd.conf /etc/httpd/conf/httpd.conf 
COPY ./apache/ssl.conf /etc/httpd/conf.d/ssl.conf

COPY ./apache/index.html /var/www/html/index.html
COPY ./apache/sw.js /var/www/html/sw.js
COPY ./apache/manifest.json /var/www/html/manifest.json
COPY ./apache/offline.html /var/www/html/offline.html

# expose ports 
EXPOSE 80 443 22 3306 7310 7311 7312 7313 7314 7315 7316 7317 7318

# only one CMD 
CMD ["/usr/sbin/init"]
 
