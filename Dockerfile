FROM python:3.7.0-alpine3.8

COPY ./requirements.txt /tmp/requirements.txt
RUN apk install pkg-config
RUN pip3 install -U pip
RUN pip3 install -r /tmp/requirements.txt

CMD ["echo", "coucou"]
