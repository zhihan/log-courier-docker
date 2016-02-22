FROM ubuntu

MAINTAINER Zhi Han <zhi.han@gmail.com>

# Create a user called 'me', set password and add to sudoers
RUN adduser --home /home/me me && \
  echo me:password | chpasswd && \
  adduser me sudo

RUN apt-get -y install software-properties-common

# Install log-courier
RUN add-apt-repository ppa:devel-k/log-courier && \
  apt-get update && \
  apt-get -y install log-courier

# Start the imae as 'me'
USER me
