# FROM devopsfaith/krakend

# COPY krakend.json /etc/krakend/krakend.json

# ENTRYPOINT [ "/usr/bin/krakend" ]
# CMD [ "run", "-c", "/etc/krakend/krakend.json"]

# RUN docker run -p 8080:8080 github-jobs-kraken

FROM ubuntu:16.04

WORKDIR /app

COPY Dockerfile /app/

RUN apt-get update && apt-get install docker-ce docker-ce-cli containerd.io  

RUN docker build -t github-jobs-kraken .  && docker run -p 8080:8080 github-jobs-kraken
