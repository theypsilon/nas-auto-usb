#!/usr/bin/env bash

set -euo pipefail

docker rm -f samba || true
docker run --name samba --restart=always -d -t \
	-p 137:137/udp \
	-p 138:138/udp \
	-p 139:139/tcp \
	-p 445:445/tcp \
	-v /media:/data \
	-v smb.conf:/conf.d/samba/smb.conf \
	-e USER_NAME=nas \
	-e USER_PASSWD=12345 \
	-e USER_UID=${UID} \
	-e USER_GID=${UID} \
	forumi0721alpinearmhf/alpine-armhf-samba:latest
