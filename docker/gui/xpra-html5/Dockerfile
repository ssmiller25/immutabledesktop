FROM debian:buster
MAINTAINER Steve Miller <me@r15cookie.com>

# install xpra
#  Using winswitch, as the xpra within Debian doesn't appear
# to be compiled with HTML support
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends wget gnupg && \
    wget -O - http://winswitch.org/gpg.asc | apt-key add - && \
    echo "deb http://winswitch.org/ buster main" > /etc/apt/sources.list.d/xpra.list && \
    apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends openssl xpra xvfb xterm && \
    apt-get clean && \ 
    rm -rf /var/lib/apt/lists/*

ADD infinityTerm.sh /usr/local/bin/infinityTerm

# non-root user
RUN adduser --disabled-password --gecos "User" --uid 1000 user

# install all X apps here
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends firefox-esr && \
    apt-get clean && \ 
    rm -rf /var/lib/apt/lists/*

USER user

ENV DISPLAY=:100

EXPOSE 10000

CMD xpra start --bind-tcp=0.0.0.0:10000 --html=on --start-child=infinityTerm --exit-with-children --daemon=no --xvfb="/usr/bin/Xvfb +extension  Composite -screen 0 1920x1080x24+32 -nolisten tcp -noreset" --pulseaudio=no --notifications=no --bell=no
