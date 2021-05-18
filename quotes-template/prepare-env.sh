#!/bin/bash 
oc new-project unit6

wget https://raw.githubusercontent.com/roxcarpio/do-288-code/main/quotes-template/quotes-template.yml -O quotes-template.yml

oc new-app --file=quotes-template.yml

rm -rf quotes-template.yml