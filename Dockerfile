FROM alpine:3.22

EXPOSE 8118 9050

RUN apk --update add privoxy tor runit tini curl

COPY service /etc/service/

ENTRYPOINT ["tini", "--"]
CMD ["runsvdir", "/etc/service"]
