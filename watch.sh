#!/bin/bash

while inotifywait -e create ~/zoneminder; do
  aws s3 mv *.zip s3://zoneminder-events --recursive
done
