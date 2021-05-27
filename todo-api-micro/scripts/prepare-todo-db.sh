#!/bin/bash
YAML_FILE=db.yml
oc new-project database

wget https://raw.githubusercontent.com/roxcarpio/do-288-code/main/todo-api-micro/scripts/db.yaml -O $YAML_FILE

oc create -f $YAML_FILE

rm -rf YAML_FILE

FLAG_PROYECT=$(oc projects | grep unit9)

if [[ $FLAG_PROYECT = "" ]]
then
  oc new-project unit9
else  
  oc project unit9
fi