For Clear Server Install
```
bash -c "$(curl -fsSL https://raw.githubusercontent.com/samaelleo/bash-server/main/bash-socks.sh)"
```
For Just Xray
```
bash -c "$(curl -fsSL https://raw.githubusercontent.com/samaelleo/bash-server/main/xray.sh)"
```
For Find Log File And Delet It
```
find . -xdev -type f -size +100M -print | xargs ls -lh | sort -k5,5 -h -r
```
just xray
```
sudo bash -c "$(curl -L https://github.com/XTLS/Xray-install/raw/main/install-release.sh)" @ install
```
then edit this
```
nano /usr/local/etc/xray/config.json
```
----------------------------------------------------------------------------------------------------------
dockodemo for tunnle
```
{
   "inbounds": [
     {
       "listen": "127.0.0.1",
       "port": 62789,
       "protocol": "dokodemo-Door",
       "settings": {
         "address": "127.0.0.1"
       },
       "tag": "api"
     },
     {
       "listen": null,
       "port": Main_Server_Port,
       "protocol": "dokodemo-Door",
       "settings": {
         "address": "MAIN_SERVER_IP",
         "followRedirect": false,
         "network": "tcp,udp",
         "port": MAIN_SERVER_PORT
       },
       "tag": "inbound-MAIN_SERVER_PORT"
     }
   ],
   "outbounds": [
     {
       "protocol": "freedom"
     },
     {
       "protocol": "blackhole",
       "tag": "blocked"
     }
   ]
}
```
restart xray
```
systemctl restart xray
```
