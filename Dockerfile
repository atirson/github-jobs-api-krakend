# FROM devopsfaith/krakend

# COPY krakend.json /etc/krakend/krakend.json

# ENTRYPOINT [ "/usr/bin/krakend" ]
# CMD [ "run", "-c", "/etc/krakend/krakend.json"]

# RUN docker run -p 8080:8080 github-jobs-kraken

FROM ubuntu:16.04

WORKDIR /app

COPY Dockerfile /app/

RUN docker build -t github-jobs-kraken .  && docker run -p 8080:8080 github-jobs-kraken
