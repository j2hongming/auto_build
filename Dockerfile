FROM python:alpine
RUN apk add redis && pip install Flask Redis
COPY . /web
WORKDIR /web
#ENTRYPOINT run-service.sh
CMD ["/bin/sh", "run-service.sh"]
