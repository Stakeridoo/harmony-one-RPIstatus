#! /bin/bash
date +%c
echo -e "\n RPI Node on Shard 0 Status:\n" && ./hmy blockchain latest-headers -n http://172.217.0.0:9500 | grep epoch && ./hmy blockchain latest-headers -n http://172.217.0.0:9500 | grep view-id
echo -e "\n Harmony Network Shard 0 Status:\n" && ./hmy --node="https://api.s0.t.hmny.io" blockchain latest-headers | grep epoch && ./hmy --node="https://api.s0.t.hmny.io" blockchain latest-headers | grep viewID

echo -e "\n RPI Node on Shard 1 Status:\n" && ./hmy blockchain latest-headers -n http://172.217.0.0:9501 | grep epoch && ./hmy blockchain latest-headers -n http://172.217.0.0:9501 | grep view-id
echo -e "\n Harmony Network Shard 1 Status:\n" && ./hmy --node="https://api.s1.t.hmny.io" blockchain latest-headers | grep epoch && ./hmy --node="https://api.s1.t.hmny.io" blockchain latest-headers | grep viewID

echo -e "\n RPI Node on Shard 2 Status:\n" && ./hmy blockchain latest-headers -n http://172.217.0.0:9502 | grep epoch && ./hmy blockchain latest-headers -n http://172.217.0.0:9502 | grep view-id
echo -e "\n Harmony Network Shard 2 Status:\n" && ./hmy --node="https://api.s2.t.hmny.io" blockchain latest-headers | grep epoch && ./hmy --node="https://api.s2.t.hmny.io" blockchain latest-headers | grep viewID

echo -e "\n RPI Node on Shard 3 Status:\n" && ./hmy blockchain latest-headers -n http://172.217.0.0:9503 | grep epoch && ./hmy blockchain latest-headers -n http://172.217.0.0:9503 | grep view-id
echo -e "\n Harmony Network Shard 3 Status:\n" && ./hmy --node="https://api.s3.t.hmny.io" blockchain latest-headers | grep epoch && ./hmy --node="https://api.s3.t.hmny.io" blockchain latest-headers | grep viewID
