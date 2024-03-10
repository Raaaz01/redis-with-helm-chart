#!/bin/bash


#adding helm repo bitnami

helm repo add bitnami https://charts.bitnami.com/bitnami


#Installing redis chart

helm install my-redis bitnami/redis --version 18.19.1
