# sample-rest-api

# Build

`./gradlew clean build`

# Build Image for API module

`$ docker build -t <NAME>[:<TAG>] <DOCKERFILE_PATH>`

### For example

```sh
$ docker build -t demo-api:latest api/
```

# Run application using Docker

`$ docker run --rm -p <HOST_PORT>:9000 --name <CONTAINER_NAME> <NAME>[:<TAG>]`

### For example

```sh
$ docker run --rm -p 80:9000 --name api demo-api:latest
```

# Refferences

- https://docs.spring.io/spring-boot/docs/current/reference/html/spring-boot-features.html#writing-the-dockerfile
- https://docs.google.com/presentation/d/1rPM00F3ptJ3m9UHNrdTx2ZPrBoecb4Wca0GujfViBP0/edit#slide=id.g88af8c661b_0_592
