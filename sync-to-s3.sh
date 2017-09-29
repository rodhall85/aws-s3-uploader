#!/bin/bash

find /config/data/events/1 -path "*.mp4" -exec aws s3 mv {} s3://zoneminder-events/Cam1/ \;
find /config/data/events/2 -path "*.mp4" -exec aws s3 mv {} s3://zoneminder-events/Cam2/ \;
find /config/data/events/3 -path "*.mp4" -exec aws s3 mv {} s3://zoneminder-events/Cam3/ \;
find /config/data/events/4 -path "*.mp4" -exec aws s3 mv {} s3://zoneminder-events/Cam4/ \;
