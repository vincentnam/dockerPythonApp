FROM gw000/keras:1.2.1-py3-tf-cpu

WORKDIR /app/
RUN git clone https://github.com/vincentnam/dockerPythonApp.git
CMD ["bash", "/app/processImages.sh"]
