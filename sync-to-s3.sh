#!/bin/bash

find / -name "*.mp4" -exec mv -t /tmp/zm {} +

zip `$(date +"%Y-%m-%dT%H:%M:%S)`.zip /tmp/zm/

rm -f /tmp/zm/*.mp4

aws s3 mv ~/zoneminder/ s3://zoneminder-events --recursive
