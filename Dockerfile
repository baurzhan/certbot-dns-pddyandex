FROM certbot/certbot:v1.4.0
WORKDIR /scripts
COPY ./*.sh /scripts/

RUN chmod +x /scripts/* && apk add --no-cache curl


ENTRYPOINT [ "/scripts/run.sh" ]
