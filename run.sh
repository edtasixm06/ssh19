#!/bin/bash
docker network create ldapnet
docker volume create homes

docker run --rm --name ldapserver -h ldapserver --net ldapnet -d edtasixm06/ldapserver19:latest
docker run --rm --name ssh -h ssh --net ldapnet -p 2022:2022 -v homes:/tmp/home   --privileged   -d edtasixm06/ssh19:base

docker stop ssh
docker stop ldapserver
