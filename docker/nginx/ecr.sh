#!/bin/bash

AWS_REGION=ap-northeast-1
NGINX_REPO_NAME=ecr-web
IMAGE_TAG=latest
AWS_ACCOUNT_ID=$(aws sts get-caller-identity --query Account --output text)
ECR_URI=${AWS_ACCOUNT_ID}.dkr.ecr.${AWS_REGION}.amazonaws.com
ECR_REPO_URI=${ECR_URI}/${NGINX_REPO_NAME}

read -p "create-ecr-repository? [y/N]: " yn
case "${yn}" in
  [yY]*)
    aws ecr create-repository --repository-name ${NGINX_REPO_NAME} --image-scanning-configuration scanOnPush=true --region ${AWS_REGION}
    ;;
  *) ;;
esac

read -p "build-image? [y/N]: " yn
case "${yn}" in
  [yY]*)
    docker build -t ${ECR_REPO_URI}:${IMAGE_TAG} .
    ;;
  *) ;;
esac

read -p "push-image? [y/N]: " yn
case "${yn}" in
  [yY]*)
    aws ecr get-login-password --region ${AWS_REGION} | docker login --username AWS --password-stdin ${ECR_URI}
    docker push ${ECR_REPO_URI}:${IMAGE_TAG}
    ;;
  *) ;;
esac
