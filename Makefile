clean ::
	docker image rm node-git-chromium-java

lint ::
	docker run --rm -i \
		-v ${PWD}/.hadolint.yaml:/bin/hadolint.yaml \
		-e XDG_CONFIG_HOME=/bin hadolint/hadolint \
		< Dockerfile

build ::
	docker build -t node-git-chromium-java .

shell ::
	docker run --rm -t -i node-git-chromium-java busybox sh

tag ::
	docker tag node-git-chromium-java prantlf/node-git-chromium-java:lts-alpine-java8

login ::
	docker login --username=prantlf

push ::
	docker push prantlf/node-git-chromium-java:lts-alpine-java8
