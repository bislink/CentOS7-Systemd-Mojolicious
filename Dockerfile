# a2zdotblue/c7-systemd-perl-mojo-02 on gap

# Build from image 
FROM a2zdotblue/c7-systemd-perl-mojo-02

LABEL "c7.gap.a1z.us"="c8mint"
LABEL "docker-container-name"="c7"

# only one CMD 
CMD ["/usr/sbin/init"]
 
