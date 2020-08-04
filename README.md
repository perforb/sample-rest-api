# layered-jar-format-sample

# Build Image for API module

`$ docker build -t <NAME>[:<TAG>] .`

### For example

```sh
$ cd api
$ docker build -t demo-api:latest .
```

# Run application using Docker

`$ docker run --rm -p <HOST_PORT>:8080 --name <CONTAINER_NAME> <NAME>[:<TAG>]`

### For example

```sh
$ docker run --rm -p 8080:8080 --name api demo-api:latest
```

# Refferences

- https://docs.spring.io/spring-boot/docs/current/reference/html/spring-boot-features.html#writing-the-dockerfile
- https://docs.google.com/presentation/d/1rPM00F3ptJ3m9UHNrdTx2ZPrBoecb4Wca0GujfViBP0/edit#slide=id.g88af8c661b_0_592
