# Adapted from https://nystudio107.com/blog/run-your-node-js-apps-buildchains-via-docker
TAG?=19.4.0-alpine

build:
	docker build . -t frontend/node:${TAG} --no-cache
run:
	docker run -it --name 11ty -p 8080:8080 -p 3001:3001 frontend/node:${TAG} npm start

build-run:
	make build && make run
start:
	docker start -ai 11ty
exec:
	docker exec -it 11ty $(filter-out $@,$(MAKECMDGOALS))