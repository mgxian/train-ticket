# mvn build
docker run \
    --rm \
    -v $PWD:/code \
    -w /code \
    --platform=linux/amd64 \
    harbor.mcdchina.net/devops/maven:3.8.6-openjdk-8-slim \
    mvn clean package -Dmaven.test.skip=true

# run
skaffold run --default-repo harbor.mcdchina.net/tez-module
