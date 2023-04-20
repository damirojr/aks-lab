#!/bin/bash

#login in acr
az acr login --name acrparalaboratoriodevops

#build an docker image
docker build -t acrparalaboratoriodevops.azurecr.io/devopsk8s .

#exec push on acr
docker push acrparalaboratoriodevops.azurecr.io/devopsk8s

#connect on k8s
az aks get-credentials --resource-group RG-AKS-LAB --name aks


