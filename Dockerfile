FROM alpine:3.13

ENV CURATOR_VERSION 5.8.4

RUN apk --update add python3 py-pip bash && pip install elasticsearch-curator==$CURATOR_VERSION

ADD conf/action.yml /etc/curator/
ADD conf/config.yml /etc/curator/

RUN printf "4 4 * * * /usr/bin/curator --config /etc/curator/config.yml /etc/curator/action.yml" >> /etc/crontabs/root

CMD ["crond", "-f", "-l", "8"]
