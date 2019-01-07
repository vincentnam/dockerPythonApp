FROM gw000/keras:1.2.1-py3-tf-cpu


COPY ./ /app
CMD ["bash", "python3 alienrecognizer/src/AlienRecognitionKerasApp.py $(cat alienrecognizer/data/imagetoprocess/imagetoprocess)"]
