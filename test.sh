#!/bin/bash
ip="" # set to server ip
port="80"
for i in {1..100000}
do
  curl http://${ip}
  date
done

