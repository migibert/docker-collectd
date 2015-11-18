#!/bin/bash

set -m
set -e

echo "Starting collectd client"

sed -i "s/@@COLLECTD_HOST/${COLLECTD_HOST}/" /etc/collectd/collectd.conf
sed -i "s/@@COLLECTD_PORT/${COLLECTD_PORT}/" /etc/collectd/collectd.conf
sed -i "s/@@STATSD_PORT/${STATSD_PORT}/" /etc/collectd/collectd.conf

mkdir -p /etc/collectd/conf

/etc/init.d/collectd start
