#!/bin/bash
iptables -A INPUT -m state --state NEW -p tcp -s 192.168.1.107 --dport 22 -j ACCEPT
iptables -A INPUT -m state --state NEW -p tcp -j DROP
iptables-save > /etc/iptables/rules.v4
