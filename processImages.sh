#!/bin/bash
echo $SWARM_HOST
while true; do
    ls && ls alienrecognizer/ && ls alienrecognizer/src && ls alienrecognizer/data/imagetoprocess
    $IPMana= $(cat /tmp/IPManager)
    until scp fedora@$IPMana:/worker1/imagetoprocess /tmp/ ;
    do
    	#scp fedora@IPMana:/(uname -n | cut -d'.' -f1)/ /app/alienrecognizer/data/imagetoprocess
        :
    done
    python3 alienrecognizer/src/AlienRecognitionKerasApp.py $(cat alienrecognizer/data/imagetoprocess/imagetoProcess)

done