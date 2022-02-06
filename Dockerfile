FROM devopsfaith/krakend

COPY krakend.json /etc/krakend/krakend.json

ENTRYPOINT [ "/usr/bin/krakend" ]
CMD [ "run", "-p", "8080:8080",  "-c", "/etc/krakend/krakend.json"]
