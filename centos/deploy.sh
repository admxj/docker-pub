USER=harbor.repo.admxj.cn/centos
REPOSITORY_NAME=centos
VERSION=v0.0.9

IMAGE_NAME=$USER/$REPOSITORY_NAME:$VERSION
IMAGE_NAM_LATEST=$USER/$REPOSITORY_NAME:latest

docker build -t $IMAGE_NAME .
docker tag $IMAGE_NAME $IMAGE_NAM_LATEST
docker login harbor.repo.admxj.cn
docker push $IMAGE_NAME
docker push $IMAGE_NAM_LATEST
