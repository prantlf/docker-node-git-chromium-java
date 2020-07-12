# prantlf/node-git-chromium-java

[Docker] image: Node.js LTS on Alpine Linux with Git, Chromium and Java

[![nodesource/node](http://dockeri.co/image/prantlf/node-git-chromium-java)](https://hub.docker.com/repository/docker/prantlf/node-git-chromium-java/)

[This image] is supposed to build and test [Node.js packages (NPM modules)], which include dependencies pulled by [Git] and their tests need [headless Chromium] driven by [Selenium]. ([Java 8)] or [OpenJDK] are included.) It is built automatically on the top of the tag `lts-alpine` from the [node repository], so that it always runs the current [LTS version] of [Node.js] in the latest [Alpine Linux]. [Git], [Chromium] and [Java 8]/[OpenJDK] have to be updated from time to time by triggering a new build manually.

## Tags

- [`lts-alpine-java8`]
- [`lts-alpine-openjdk`]

## Install

```
docker pull prantlf/node-git-chromium-java:lts-alpine-java8
# or
docker pull prantlf/node-git-chromium-java:lts-alpine-openjdk
```

## Use

```
docker run --rm -it -v "$(pwd)":/app -w /app \
  prantlf/node-git-chromium-java:lts-alpine-openjdk \
  sh -c 'npm ci && npm test'
```

See [how to use the base node image] for more information.

## Build, Test and Publish

The local image is built as `node-git-chromium-java` and pushed to the docker hub with tags `prantlf/node-git-chromium-java:lts-alpine-java8` and `prantlf/node-git-chromium-java:lts-alpine-openjdk`.

Remove an old local image:

    make clean

Build and tag new local images:

    make build

Enter an interactive shell inside the latest created image:

    make run

Login to the docker hub:

    make login

Push the local image to the docker hub:

    make push

## License

Copyright (c) 2020 Ferdinand Prantl

Licensed under the MIT license.

[Docker]: https://www.docker.com/
[This image]: https://hub.docker.com/repository/docker/prantlf/node-git-chromium-java
[`lts-alpine-java8`]: https://hub.docker.com/repository/docker/prantlf/node-git-chromium-java/tags
[`lts-alpine-openjdk`]: https://hub.docker.com/repository/docker/prantlf/node-git-chromium-java/tags
[Node.js packages (NPM modules)]: https://docs.npmjs.com/about-packages-and-modules
[Git]: https://git-scm.com/
[headless Chromium]: https://chromium.googlesource.com/chromium/src/+/lkgr/headless/README.md
[Chromium]: https://www.chromium.org/
[Selenium]: https://www.selenium.dev/
[Java 8]: https://www.java.com/
[OpenJDK]: https://openjdk.java.net/
[node repository]: https://hub.docker.com/_/node
[LTS version]: https://nodejs.org/en/about/releases/
[Node.js]: https://nodejs.org/
[Alpine Linux]: https://alpinelinux.org/
[how to use the base node image]: https://github.com/nodejs/docker-node/blob/master/README.md#how-to-use-this-image
