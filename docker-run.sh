#!/usr/bin/sh

# name to be given to container 
name="a2zdocker";

# rebuid image to install updates
echo "Building $image";
docker build -t $image . 

# Host Ports. It is an update of this app, not a new creation: 
#   Therefore, host/guest ports remain the same for every update/rebuild.
h_ssh="7310"
h_http="7311"
h_https="7312"
h_mysql="7313"
h_app_ssl="7314"
h_perlmojo='7315'
h_apache='7316'
h_mojo_ssl='7317'
h_apache_ssl='7318'

# Guest Ports
g_http='80'
g_https='443'
g_mysql='3306'
g_ssh='22'
g_app_ssl='7314'
g_perlmojo='7315'
g_apache='7316'
g_mojo_ssl='7317'
g_apache_ssl='7318'

# stop container
echo "Stopping container $name"
#sudo docker container stop $name

# delete container 
echo "Deleting container $name"
#sudo docker container rm $name

# run built image
echo "docker run -d -v /sys/fs/cgroup:/sys/fs/cgroup:ro --hostname c7.gap.a1z.us --privileged --name $name -p $h_http:$g_http -p $h_https:$g_https -p $h_mysql:$g_mysql -p $h_ssh:$g_ssh -p $h_app_ssl:$g_app_ssl -p $h_perlmojo:$g_perlmojo $image"
sudo docker run -d -v /sys/fs/cgroup:/sys/fs/cgroup:ro ==hostname c7.gap.a1z.us --privileged --name "$name" -p $h_http:$g_http \
-p $h_https:$g_https -p $h_mysql:$g_mysql -p $h_ssh:$g_ssh -p $h_app_ssl:$g_app_ssl \
-p $h_perlmojo:$g_perlmojo -p $h_apache:$g_apache -p $h_mojo_ssl:$g_mojo_ssl \
-p $h_apache_ssl:$g_apache_ssl "$image"

# log into container thereafter..
echo "logging in to $name "
sudo docker exec -it "$name" /bin/bash 



