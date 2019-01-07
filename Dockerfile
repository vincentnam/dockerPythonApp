FROM gw000/keras:1.2.1-py3-tf-cpu

WORKDIR /app

ADD . /app/
RUN chmod +x /app/processImages.sh
ENTRYPOINT ["/app/processImages.sh"]
