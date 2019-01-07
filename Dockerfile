FROM python:3.7.0-alpine3.8
RUN echo "ipv6" >> /etc/modules
RUN echo "http://dl-1.alpinelinux.org/alpine/edge/main" >> /etc/apk/repositories; \
    echo "http://dl-2.alpinelinux.org/alpine/edge/main" >> /etc/apk/repositories; \
    echo "http://dl-3.alpinelinux.org/alpine/edge/main" >> /etc/apk/repositories; \
    echo "http://dl-4.alpinelinux.org/alpine/edge/main" >> /etc/apk/repositories; \
    echo "http://dl-5.alpinelinux.org/alpine/edge/main" >> /etc/apk/repositories
COPY ./requirements.txt /tmp/requirements.txt
RUN apk add pkg-config
RUN pip3 install -U pip
RUN pip3 install -r /tmp/requirements.txt

CMD ["echo", "coucou"]
