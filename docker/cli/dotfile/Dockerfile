ARG GIT_HASH
ARG VERSION
ARG RELEASE_DATE
ARG UPSTREAM_IMAGE

FROM $UPSTREAM_IMAGE

RUN apk add --no-cache git
# From Edge Testing
RUN apk add --no-cache --repository=http://dl-cdn.alpinelinux.org/alpine/edge/testing git-secret

# Not functioanl...maybe have to do build contianer around nodejs and pull down...
#RUN wget -O bw.zip https://github.com/bitwarden/cli/releases/download/v1.15.1/bw-linux-1.15.1.zip && \
#    unzip bw.zip && \
#    rm bw.zip && \
#    chmod 755 bw && \
#    mv bw /usr/local/bin



COPY entrypoint.sh /entrypoint.sh
RUN chmod 755 /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

LABEL maintainer="Steve Miller <me@r15cookie.com>"
LABEL version="${VERSION}"
LABEL git_hash="${GIT_HASH}"
LABEL release-date="${RELEASE_DATE}"

