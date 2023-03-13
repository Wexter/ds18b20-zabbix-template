# ds18b20-zabbix-template
Zabbix template for DS18B20 temperature sensors.

Module w1-gpio required

## Installation

Import `zbx_export_templates.xml` to zabbix.

Add file `discover_temp_sensors.sh` to `/usr/local/bin` and make it executable `chmod +x /usr/local/bin/discover_temp_sensors.sh`.

Add file `userparameter_temp_sensors.conf` to `/etc/zabbix/zabbix_agentd.conf.d`.

Restart zabbix agent.

Link template `Temperature sensors` to needed host.