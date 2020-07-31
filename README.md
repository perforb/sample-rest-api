# Build Image

```sh
./mvnw spring-boot:build-image
```

# Run application using Docker

```sh
docker run -p 8080:8080 --name springbootcontainer cloud-native-buildpacks-sample:0.0.1-SNAPSHOT
```

# Refferences

- https://medium.com/@TimvanBaarsen/first-look-at-cloud-native-buildpacks-support-in-spring-boot-2-3-milestone-1-ece8e72ed93f