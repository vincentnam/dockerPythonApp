FROM gw000/keras:1.2.1-py3-tf-cpu

WORKDIR /app

ADD . /app/

ENTRYPOINT ["/app/processImages.sh"]
