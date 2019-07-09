#!/bin/sh

while true
do
wget https://data.buienradar.nl/1.0/feed/xml -O /root/bueinradar.xml
/root/jtm /root/bueinradar.xml |mosquitto_pub  -h $1 -p $2 -u $3 -P $4 -t $5 -s
sleep $6
done
