# Dockerfile to install NoMachine free v. 6 with MATE interface 
FROM debian:stretch


ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y apt-utils vim xterm pulseaudio cups curl
ENV NOMACHINE_VERSION 6.8
ENV NOMACHINE_PACKAGE_NAME nomachine_6.8.1_1_amd64.deb
ENV NOMACHINE_MD5 d444b113b22050b95271957500f9bd37


RUN apt-get install -y mate-desktop-environment-core 

# Installation of ssh is required if you want to connect to NoMachine server using SSH protocol when supported.
# Comment it out if you don't need it or if you use NoMachine free.

RUN apt-get install -y ssh \
&& service ssh start 



RUN curl -fSL "http://download.nomachine.com/download/${NOMACHINE_VERSION}/Linux/${NOMACHINE_PACKAGE_NAME}" -o nomachine.deb \
&& echo "${NOMACHINE_MD5} *nomachine.deb" | md5sum -c - \
&& dpkg -i nomachine.deb \
&& groupadd -r nomachine -g 433 \
&& useradd -u 431 -r -g nomachine -d /home/nomachine -s /bin/bash -c "NoMachine" nomachine \
&& mkdir /home/nomachine \
&& chown -R nomachine:nomachine /home/nomachine \
&& echo 'nomachine:nomachine' | chpasswd

ADD nxserver.sh /
RUN chmod 755 /nxserver.sh

ENTRYPOINT ["/nxserver.sh"]
