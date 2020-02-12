#!/usr/bin/env bash
docker stop coral-rtc
docker rm coral-rtc
docker run -d  --privileged=true -p 8089:9001 --name coral-rtc 10.10.208.193:5000/coral-rtc:20200212000435

docker logs -f coral-rtc
