#!/bin/bash
#echo "ubuntu:asdfASDF1234!" | sudo chpasswd
echo "root:asdfASDF1234!" | sudo chpasswd
sudo echo "nameserver 1.1.1.1" > /etc/resolv.conf
# sudo sed -i '1s/^/nameserver 1.1.1.1\n/' /etc/resolv.conf
sudo apt-get -qq update && apt-get -qq upgrade -y
sudo apt-get -qq install -y iptraf iperf openvpn net-tools snmpd speedtest-cli nano cron ufw snmpd net-tools tmux resolvconf bashtop
crontab -r
crontab -l | { cat; echo "5 1   *   *   *    sudo reboot"; } | crontab -
sudo echo "rocommunity [Gr00pL@nc!ng]" > /etc/snmp/snmpd.conf
sudo echo "view systemview included .1.3." >> /etc/snmp/snmpd.conf
systemctl restart snmpd
sudo echo "nameserver 1.1.1.1" > /etc/resolv.conf
sudo echo "nameserver 1.1.1.1" >> /etc/resolvconf/resolv.conf.d/head
sudo bash -c "$(curl -L https://github.com/XTLS/Xray-install/raw/main/install-release.sh)" @ install
rm -rf /usr/local/etc/xray/config.json
cat <<EOF >> /usr/local/etc/xray/config.json
{
  "log": {
    "loglevel": "warning"
  },
  "inbounds": [
    {
      "port": 12334,
      "protocol": "socks",
      "settings": {
        "auth": "noauth",
        "udp": true
      }
    }
  ],
  "outbounds": [
    {
      "protocol": "freedom"
    }
  ]
}
EOF
systemctl restart xray
sudo ufw default allow routed
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw allow from 5.75.196.198 to any port 22
sudo ufw allow from 142.132.177.45 to any port 22
sudo ufw allow from 142.132.163.34 to any port 22
sudo ufw allow from 91.107.147.249 to any port 22
sudo ufw allow from 167.235.158.128 to any port 22
sudo ufw allow from 5.75.196.198 to any port 7070
sudo ufw allow from 142.132.177.45 to any port 7070
sudo ufw allow from 142.132.163.34 to any port 7070
sudo ufw allow from 91.107.147.249 to any port 7070
sudo ufw allow from 167.235.158.128 to any port 7070
sudo ufw allow from 95.217.37.174
sudo ufw allow from 95.217.37.136
sudo ufw allow from 167.235.54.233
sudo ufw deny out 25
sudo ufw deny out 993
sudo ufw deny out 465
sudo ufw deny out 587
sudo ufw allow from any to any port 443
sudo ufw deny out from any to 10.0.0.0/8
sudo ufw deny out from any to 172.16.0.0/12
sudo ufw deny out from any to 192.168.0.0/16
sudo ufw deny out from any to 141.101.78.0/23
sudo ufw deny out from any to 173.245.48.0/20
echo "y" | sudo ufw enable
exit
sudo reboot
