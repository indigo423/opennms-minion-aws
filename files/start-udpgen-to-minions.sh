#!/bin/sh
{% for host in groups['tag_MinionLabInstanceType_minion'] %}
udpgen -d -h {{ hostvars[host]['ec2_private_ip_address'] }} -p 1514 -r 10000
{% endfor %}
