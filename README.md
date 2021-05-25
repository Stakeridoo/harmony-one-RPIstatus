# Harmony One RPIstatus
Check with one command if your Raspberry Pi Node is synced with the Harmony One Blockchain

## Requirement
Please refer to docs from Harmony One: https://docs.harmony.one/home/network/validators/node-setup/installing-updating/installing-node/using-binary
- Open Port as set up inside Harmony.conf
- Changed IP to 0.0.0.0 inside Harmony.conf
```bash
[HTTP]
  Enabled = true
  IP = "0.0.0.0"
  Port = 9500
  RosettaEnabled = false
  RosettaPort = 9700
  ```
  
## Build
Build your own Version with the following set of commands:

1. Create the Shell Script:

> What's needed to change is the IP (IPv4 address of your Node) and the Port. In here we have an example for 4 Rasperry Pi each on another Shard, you can remove or adjust as required.
```bash
cat<<-EOF > ~/RPIstatus.sh
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
EOF
 ```
 
2. Change permission:
```bash
chmod +x ~/RPIstatus.sh
 ```
 
 ## Run the Script
 
 
1. Run the Shell Script:
 ```bash
./RPIstatus.sh
 ```
 
 2. Give out:
 > In our example we have a Node on Shard 1 and on Shard 2, so we removed Shard 0 and Shard 3 commands.
 
 ![Script](https://github.com/Stakeridoo/harmony-one-RPIstatus/blob/main/RPIstatus.sh.png)
