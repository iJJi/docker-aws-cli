FROM alpine:3.10

# Build-time metadata as defined at http://label-schema.org
ARG BUILD_DATE
ARG VCS_REF
LABEL org.label-schema.build-date=$BUILD_DATE \
      org.label-schema.docker.dockerfile="Dockerfile" \
      org.label-schema.license="MIT" \
      org.label-schema.name="aws-cli" \
      org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.vcs-type="git" \
      org.label-schema.vcs-url="https://github.com/iJJi/docker-aws-cli" \
      org.label-schema.vendor="Ijji, inc."

RUN apk add --update-cache python ca-certificates groff less py-pip py-setuptools && \
    pip --no-cache-dir install awscli  && \
    apk del --purge py-pip py-setuptools && \
    rm -rf /var/cache/apk/*

