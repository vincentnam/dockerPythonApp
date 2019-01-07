FROM gw000/keras:1.2.1-py3-tf-cpu


COPY ./ /app
CMD ["bash", "imagetoprocess.sh"]
