#!/bin/bash

sudo docker run --rm -v "$(pwd)/save:/opt/factorio/create" factorio:0.17.74 --mod-directory "/opt/factorio/mods" --create "/opt/factorio/create/${1:-savedata}"
