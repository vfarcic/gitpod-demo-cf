SHELL := /bin/bash

init:
	git submodule init
	git submodule update
	cp content/img/banner.jpg themes/forty/static/img/.
	-codefresh auth create-context devops-catalog --api-key ${CF_TOKEN}
	-codefresh create context git github gitpod-git --access-token ${GH_TOKEN}
	$(eval GH_REPO=$(shell git config --get remote.origin.url | sed -e "s@https://github.com/@@g" | sed -e "s@\.git@@g"))
	cat codefresh-master.yml | sed -e "s@CHANGE_ME_REPO@${GH_REPO}@g" | tee codefresh-master.yml
	cat codefresh-master.yml | sed -e "s@CHANGE_ME_DH_USER@${DH_USER}@g" | tee codefresh-master.yml
	cat codefresh-master.yml | sed -e "s@CHANGE_ME_PROD_REPO@${PROD_REPO}@g" | tee codefresh-master.yml
	cat production.yaml | sed -e "s@CHANGE_ME_PROD_REPO@${PROD_REPO}@g" | tee production.yaml
	-codefresh create pipeline -f codefresh-master.yml

build:
	hugo

dev:
	hugo server
