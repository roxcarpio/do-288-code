#!/bin/bash
YAML_FILE=db.yml
oc new-project database

wget https://raw.githubusercontent.com/roxcarpio/do-288-code/main/todo-api-micro/scripts/db.yaml -O $YAML_FILE

oc create -f $YAML_FILE

rm -rf YAML_FILE