#!/bin/sh
sudo mount //192.168.33.10/www ./www -t cifs -o username=vagrant,password=vagrant,uid=$(id -u),gid=$(id -g),rw,defaults
