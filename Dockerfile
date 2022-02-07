FROM devopsfaith/krakend

COPY krakend.json /etc/krakend/krakend.json

ENTRYPOINT [ "/usr/bin/krakend" ]

EXPOSE 8080

CMD [ "run", "-c", "/etc/krakend/krakend.json"]
