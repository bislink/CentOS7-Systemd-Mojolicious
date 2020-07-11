# a2zdotblue/c7-systemd-perl-mojo-02 on gap

# Build from image 
FROM a2zdotblue/c7-systemd-perl-mojo-02

LABEL "url"="c7.gap.a1z.us"

RUN yum -y update

RUN yum -y install nano wget vim mariadb-server perl-CPAN perl-DateTime

WORKDIR /app

RUN rm -rf /app/perlmojo; rm -rt /app/Dockerfile 

COPY . /app
COPY ./start_apps.sh /app/start_apps.sh

RUN rm -rf /app/Dockerfile; rm -rf /app/docker-run.sh

# expose ports 
EXPOSE 80 443 22 3306 7310 7311 7312 7313 7314 7315 7316 7317 7318

# only one CMD 
CMD ["/usr/sbin/init"]
 
