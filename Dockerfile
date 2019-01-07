FROM gw000/keras:1.2.1-py3-tf-cpu

WORKDIR /app/
RUN git clone https://github.com/vincentnam/dockerPythonApp.git
RUN ls && ls /alienrecognizer && ls /alienrecognizer/src && ls /alienrecognizer/data/imagetoprocess
CMD ["bash", "/app/processImages.sh"]
