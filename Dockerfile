# I needed an image with AWS CLI installed for basic
# usage to create a table in a local dynamoDB install
# for local dev environments
# 

FROM python:2.7.15

# Version taken from 
# https://github.com/aws/aws-cli/releases
ARG CLI_VERSION=1.16.93

RUN pip install --no-cache-dir awscli==$CLI_VERSION

WORKDIR /

CMD sh /hostScript/script.sh