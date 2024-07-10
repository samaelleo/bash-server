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
dockodemo for tunnle
```
{
  "log": {
    "access": "/var/log/v2ray/access.log",
    "error": "/var/log/v2ray/error.log",
    "loglevel": "warning"
  },
  "inbounds": [
    {
      "listen": "0.0.0.0",
      "port": 443,
      "protocol": "dokodemo-door",
      "settings": {
        "address": "5.78.50.67",
        "port": 443,
        "network": "tcp,udp"
      }
    }
  ],
  "outbounds": [
    {
      "protocol": "freedom",
      "tag": "freedom"
    }
  ]
}
```
