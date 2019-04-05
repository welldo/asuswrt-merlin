#!/bin/sh

server=`nvram get ddns_server_x`
username=`nvram get ddns_username_x`
pass=`nvram get ddns_passwd_x`
hostname=`nvram get ddns_hostname_x`
wanip=`nvram get wan0_ipaddr`
dualwan=`nvram get wans_dualwan`
USER=$1
PASSWD=$2
HOST=$3
#CurrWANIP=$4
[ -n "$username" ] && USER="$username" || USER="$1"
[ -n "$pass" ] && PASSWD="$pass" || PASSWD="$2"
[ -n "$hostname" ] && HOST="$hostname" || HOST="$3"
if [ "$server" == "3322" ]
then
	#x_DDNSServer="www.pubyun.com"
	if [ "$dualwan" != "wan none" ]; then
		wget -q -O - "http://$USER:$PASSWD@members.3322.net/dyndns/update?hostname=$HOST&myip=$wanip"   
	else
		wget -q -O - "http://$USER:$PASSWD@members.3322.net/dyndns/update?hostname=$HOST"
	fi
	if [ $? -eq 0 ]; then
		/sbin/ddns_custom_updated 1
	else                           
		/sbin/ddns_custom_updated 0
	fi 
fi

if [ "$server" == "oray" ]
then
	#x_DDNSServer="www.oray.com"
	if [ "$dualwan" != "wan none" ]; then
		result=`curl -s "http://$USER:$PASSWD@ddns.oray.com/ph/update?hostname=$HOST&myip=$wanip"|tr " " "\n"|sed -n 1p`
		case $result in
			good|nochg)
				/sbin/ddns_custom_updated 1 
				;;
			*)
				/sbin/ddns_custom_updated 0
				;;
		esac
	else
		result=`curl -s "http://$USER:$PASSWD@ddns.oray.com/ph/update?hostname=$HOST"|tr " " "\n"|sed -n 1p`
		case $result in
			good|nochg)
				/sbin/ddns_custom_updated 1
				;;
			*)
				/sbin/ddns_custom_updated 0
				;;
		esac
	fi
fi

if [ "$server" == "changeip" ]
then
	#x_DDNSServer="www.changeip.com"
	if [ "$dualwan" != "wan none" ]; then
		wget -q -O - "http://nic.ChangeIP.com/nic/update?u=$USER&p=$PASSWD&hostname=$HOST&cmd=update&offline=0&myip=$wanip"   
	else
		wget -q -O - "http://nic.ChangeIP.com/nic/update?u=$USER&p=$PASSWD&hostname=$HOST&cmd=update&offline=0"
	fi
	if [ $? -eq 0 ]; then
		/sbin/ddns_custom_updated 1
	else                           
		/sbin/ddns_custom_updated 0
	fi 
fi
