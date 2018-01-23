# docker-aws-cli


 [![Build Status](https://travis-ci.org/iJJi/docker-aws-cli.svg?branch=master)](https://travis-ci.org/iJJi/docker-aws-cli)

[AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-welcome.html) tool in a docker container built on alpine linux so it's tiny!

It's on [docker-hub](https://hub.docker.com/r/fingershock/aws-cli/) and [github](https://github.com/iJJi/docker-aws-cli)

## tags and links

 * `latest`, [(Dockerfile)](https://github.com/iJJi/docker-aws-cli/blob/master/Dockerfile) [![](https://images.microbadger.com/badges/image/fingershock/aws-cli:latest.svg)](https://microbadger.com/images/fingershock/aws-cli:latest "Get your own image badge on microbadger.com")

## running

Run any AWS CLI command. Can set environment variables and accepts command line options.
```sh
docker run --rm -e AWS_ACCESS_KEY_ID="access-key" -e AWS_SECRET_ACCESS_KEY="secret" fingershock/aws-cli aws s3 ls
```

Get help for any commands
```sh
docker run --rm fingershock/aws-cli aws s3 ls help
```

