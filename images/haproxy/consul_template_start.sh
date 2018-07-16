#!/bin/bash
consul-template -template="/etc/consul-template.d/haproxy.conf:/etc/haproxy/haproxy.cfg:systemctl restart haproxy.service" -retry 30s -max-stale 5s -wait 5s
