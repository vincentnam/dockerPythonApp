FROM gw000/keras:1.2.1-py3-tf-cpu

WORKDIR /app
ADD . /app/
RUN cp -r /app/PIL /home/travis/virtualenv/python3.7.1/lib/python3.7/site-packages/
CMD [ "chmod" ,"+x", "/app/processImages.sh"]
ENTRYPOINT ["./processImages.sh"] 
