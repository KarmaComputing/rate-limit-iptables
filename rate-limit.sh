#!/bin/bash
# src: http://www.cyberciti.biz/faq/iptables-connection-limits-howto/

IPT=/sbin/iptables 
# Max connection in seconds
SECONDS=5
# Max connections per IP
BLOCKCOUNT=10
# default action can be DROP or REJECT
DACTION="REJECT"
$IPT -A INPUT -p tcp --dport 80 -i eth0 -m state --state NEW -m recent --set
$IPT -A INPUT -p tcp --dport 80 -i eth0 -m state --state NEW -m recent --update --seconds ${SECONDS} --hitcount ${BLOCKCOUNT} -j ${DACTION}

