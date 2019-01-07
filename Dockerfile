FROM gw000/keras:1.2.1-py3-tf-cpu

WORKDIR /app
ADD . /app/
RUN pip3 install -e ./PIL
CMD [ "chmod" ,"+x", "/app/processImages.sh"]
ENTRYPOINT ["./processImages.sh"] 
