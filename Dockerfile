FROM python:3.7.0-alpine3.8

ENV PYTHONUNBUFFERED 1 

RUN apk add --no-cache \
            --upgrade \
            --repository http://dl-cdn.alpinelinux.org/alpine/edge/main \
       alpine-sdk \
       postgresql-dev \
       postgresql-client \
       libpq \
       gettext \
   && apk add --no-cache \
              --upgrade \
              --repository http://dl-cdn.alpinelinux.org/alpine/edge/testing \
       geos \
       proj4 \
       gdal \
   && ln -s /usr/lib/libproj.so.13 /usr/lib/libproj.so \
   && ln -s /usr/lib/libgdal.so.20 /usr/lib/libgdal.so \
   && ln -s /usr/lib/libgeos_c.so.1 /usr/lib/libgeos_c.so
COPY ./requirements.txt /tmp/requirements.txt

RUN pip3 install -U pip && pip install -r /tmp/requirements.txt 

CMD ["echo", "coucou"]
