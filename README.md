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
