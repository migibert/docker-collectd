FROM ubuntu:trusty
MAINTAINER Mikaël Gibert <mikael.gibert@gmail.com>

RUN apt-get update
RUN apt-get install -y collectd

ADD ./collectd.conf /etc/collectd/collectd.conf
EXPOSE 25826

RUN /etc/init.d/collectd start
