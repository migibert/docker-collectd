sudo docker build -t collectd . 
sudo docker run -it -p 8125:8125/udp -v /tmp/collectd/conf/:/etc/collectd/conf collectd:latest
