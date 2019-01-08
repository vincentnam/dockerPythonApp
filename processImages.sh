#!/bin/bash
echo $SWARM_HOST
sleep 10
while true; do
    sleep 5
    echo $SWARM_HOST
    #ls && ls alienrecognizer/ && ls alienrecognizer/src && ls alienrecognizer/data/imagetoprocess
    $IPMana= $(cat /tmp/IPManager)
  #  until scp fedora@$IPMana:/worker1/imagetoprocess /tmp/ ;
   # do
    #	#scp fedora@IPMana:/(uname -n | cut -d'.' -f1)/ /app/alienrecognizer/data/imagetoprocess
     #   :
    #done
    #python3 alienrecognizer/src/AlienRecognitionKerasApp.py $(cat alienrecognizer/data/imagetoprocess/imagetoProcess)

done