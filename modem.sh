echo 'You may need to re-cnfigure the -p path in my case it was located in /dev/cdc-wb0'
echo 'Activating Modem At Slot 0'

sudo mbimcli -p -d /dev/cdc-wdm0 --quectel-set-radio-state=on
sudo mmcli -m 0 --enable
sudo mmcli -m 0 --signal-setup=1
sudo mmcli -m 0 --signal-get
sudo mmcli -m 0 --signal-setup-thresholds= - 64 - 10
sudo mmcli -m 0 --set-allowed-modes='4g'
sudo mmcli -m 0 --3gpp-register-home
sudo mbimcli -p -d /dev/cdc-wdm0 --quectel-query-radio-state
sudo mbimcli -p -d /dev/cdc-wdm0 --quectel-set-radio-state=on
sudo mbimcli -p -d /dev/cdc-wdm0 --register-automatic
sudo mbimcli -p -d /dev/cdc-wdm0 --query-device-services
sudo mbimcli -p -d /dev/cdc-wdm0 --attach-packet-service

#--Free--Cookie--#
# nohup &>/dev/null &
# exit;
