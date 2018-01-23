FROM alpine:3.7

RUN apk add --update-cache python ca-certificates groff less py-pip py-setuptools && \
    pip --no-cache-dir install awscli  && \
    apk del --purge py-pip py-setuptools && \
    rm -rf /var/cache/apk/*

