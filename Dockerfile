FROM gw000/keras:1.2.1-py3-tf-cpu


COPY processImages.sh /app
ADD alienrecognizer /app
RUN ls && ls /alienrecognizer && ls /alienrecognizer/src && ls /alienrecognizer/data/imagetoprocess
CMD ["bash", "/app/processImages.sh"]
