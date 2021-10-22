通过SNMP监控华为iBMC和华为iMana接口
已经在华为RH2288v2、RH2288v3  RH2485上验证。
监控整体健康、型号、序列号等信息。同时可以自动发现内存、风扇、硬盘、温度数据。

适用于zabbix 3.x
update：2019.05.11,请下载Huawei_iBMC_v5.zip的附件。

	最新模板V5
	实测支持最新华为服务器 H2288V5 主机，新增了一些告警，其中低级发现更新周期为1d，添加主机后需要1天才能发现内存硬盘风扇等相信信息。或者手动修改发现周期
	先导入valuemaps.xml、再导入V5模板。

QQ:1-8-5-0-8-3-8-6
email:qqicee#gmail.com


Monitor Huawei iBMC or iMana from SNMP
test and verify on Huawei RH2288v2、RH2288v3  、RH2485、H2288v5。download attachment named Huawei_iBMC_v5.zip
monitor overal health、model type、SN.....
auto discovery memory,physical harddisk,fans,...............
import valuemaps.xml first then import templates.xml

fit for zabbix 3.x