## My i3blocks config

Currently, `config` lives in `~/.config/i3blocks`

All blocklets should be in `blocks/`

Any blocklets in `blocks/` should be symlinked to `/usr/share/i3blocks/`

### Temperature
This script: https://github.com/vivien/i3blocks-contrib/blob/master/temperature/temperature

### OpenVPN
This script:
``` bash
#!/bin/bash
result=$(nmcli -t -f type,state,connection d | egrep "^(tun|tap):connected" | awk -F':' '{ print $3 }')
device=$(nmcli d show $result | grep IP4.ADDRESS | awk '{print $2}')
[[ -z $result ]] && echo 'N/A' || echo "$result $device"
```

