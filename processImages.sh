#!/bin/bash

ls && ls alienrecognizer/ && ls alienrecognizer/src && ls alienrecognizer/data/imagetoprocess

#until [ ! -f ./alienrecognizer/data/imagetoprocess/imagetoProcess ];
#do
#	:
#done

python3 alienrecognizer/src/AlienRecognitionKerasApp.py $(cat alienrecognizer/data/imagetoprocess/imagetoProcess) 

sleep(10)