#!/bin/bash

until [ ! -f ./alienrecognizer/data/imagetoprocess/imagetoProcess ];
do
	:
done

python3 alienrecognizer/src/AlienRecognitionKerasApp.py $(cat ./alienrecognizer/data/imagetoprocess/imagetoProcess) > rep.txt

