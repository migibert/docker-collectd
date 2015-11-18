FROM ubuntu:trusty
MAINTAINER Mikaël Gibert <mikael.gibert@gmail.com>

RUN apt-get update && apt-get install -y collectd

ENV COLLECTD_HOST localhost
ENV COLLECTD_PORT 25826
ENV STATSD_PORT 8125

ADD ./collectd.conf /etc/collectd/collectd.conf
ADD run.sh /run.sh

EXPOSE ${STATSD_PORT}
RUN ["/run.sh"]
