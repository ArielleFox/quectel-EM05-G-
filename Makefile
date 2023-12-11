modem:	
	sudo mbimcli -p -d /dev/cdc-wdm0 --quectel-query-radio-state
	sudo mbimcli -p -d /dev/cdc-wdm0 --quectel-set-radio-state=on
	sudo mbimcli -p -d /dev/cdc-wdm0 --register-automatic
	sudo mbimcli -p -d /dev/cdc-wdm0 --query-device-services
	sudo mmcli -m 0 --signal-setup-thresholds= - 64 - 10
	sudo mmcli -m 0 --signal-setup=1
	sudo mmcli -m 0 --signal-get
	sudo mbimcli -p -d /dev/cdc-wdm0 --attach-packet-service
	sudo mmcli -m 0 --set-allowed-modes='4g'