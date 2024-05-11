FROM postgres:latest

RUN apt-get update && apt-get install -y postgresql-14-wal2json

COPY ./assets/ /tmp/

RUN chmod +x /tmp/*.sh

CMD [ "/tmp/init.sh"]