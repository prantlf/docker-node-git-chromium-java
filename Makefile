clean ::
	docker image rm node-git-chromium-java

lint ::
	docker run --rm -i \
		-v ${PWD}/.hadolint.yaml:/bin/hadolint.yaml \
		-e XDG_CONFIG_HOME=/bin hadolint/hadolint \
		< Dockerfile

build :: build8 build11

build8 ::
	docker build --no-cache -t node-git-chromium-java -f Dockerfile.8 .
	docker tag node-git-chromium-java prantlf/node-git-chromium-java:lts-alpine-java8

build11 ::
	docker build --no-cache -t node-git-chromium-java -f Dockerfile.11 .
	docker tag node-git-chromium-java prantlf/node-git-chromium-java:lts-alpine-openjdk

run ::
	docker run --rm -t -i node-git-chromium-java busybox sh

login ::
	docker login --username=prantlf

push ::
	docker push prantlf/node-git-chromium-java:lts-alpine-java8
	docker push prantlf/node-git-chromium-java:lts-alpine-openjdk
