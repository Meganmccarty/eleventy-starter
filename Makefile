TAG?=19.4.0-alpine

build:
	docker build \
		. \
		-t frontend/node:${TAG} \
		--no-cache
run:
	docker container run \
		--name 11ty \
		--rm \
		-i \
		-t \
		-p 8080:8080 \
		-p 3001:3001 \
		-v "${CURDIR}":/app \
		frontend/node:${TAG} \
		$(filter-out $@,$(MAKECMDGOALS))
%:
	@: