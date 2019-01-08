#!/bin/bash
while true; do
    ls && ls alienrecognizer/ && ls alienrecognizer/src && ls alienrecognizer/data/imagetoprocess


    $IPMana= $(cat /tmp/IPManager)

    git clone https://github.com/vincentnam/worker$(uname -n | cut -d"." -f1 | cut -d"-" -f4)
    python3 alienrecognizer/src/AlienRecognitionKerasApp.py $(cat alienrecognizer/data/imagetoprocess/imagetoProcess)
    sleep 10
done