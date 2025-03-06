FROM python:3.12-alpine

RUN apk update && apk add bash vim

WORKDIR /workspace/wecom-bot-svr
RUN mkdir /workspace/wecom-bot-svr/src /workspace/wecom-bot-svr/demo

COPY src ./src
COPY demo ./demo
COPY pyproject.toml .

RUN pip3 install .
