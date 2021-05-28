#!/bin/bash
YAML_FILE=db.yml
oc new-project database

wget https://raw.githubusercontent.com/roxcarpio/do-288-code/main/todo-api-micro/scripts/db.yaml -O $YAML_FILE

oc create -f $YAML_FILE

<<<<<<< HEAD
rm -rf YAML_FILE
=======
rm -rf YAML_FILE

FLAG_PROYECT=$(oc projects | grep unit9)

if [[ $FLAG_PROYECT = "" ]]
then
  oc new-project unit9
else  
  oc project unit9
fi
>>>>>>> 66d4a1a87d2b54c1f8be7c4fdc29b0b08c585cc7
