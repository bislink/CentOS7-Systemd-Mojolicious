#!/usr/bin/sh

container="f46f07f71f91";
container_dir="/app/apache";
host_dir="/root/d/docker/a2zdocker/apache";

files="index.html sw.js httpd.conf ssl.conf";
for i in $files 
	do
		docker cp $contianer:$container_dir/$i $host_dir/$i
	done 

# docker cp f46f07f71f91:/app/apache/sw.js /root/d/docker/a2zdocker/apache/sw.js
# must specify at least one container source
