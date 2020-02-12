#!/usr/bin/env bash
version=`date +%Y%m%d%H%M%S`;
echo "build coral-rtc version $version"

docker rmi --force `docker images | grep rtc | awk '{print $3}'`
docker rmi --force `docker images | grep none | awk '{print $3}'`

docker build -t coral-rtc:$version .


docker tag coral-rtc:$version 10.10.208.193:5000/coral-rtc:$version

docker push 10.10.208.193:5000/coral-rtc:$version

echo "build coral-rtc sucess 10.10.208.193:5000/coral-rtc:$version"

