#!/bin/bash

#sleep untill the instance is ready

until [[ -f /var/lib/cloud/instance/boot-finished ]]; do
 
  sleep 1

done

#install packages

apt-get update

apt-get -y install nginx

#start the service
service nginx start

