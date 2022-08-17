# shell in container
exec:
	docker exec -it prdgm-server bash

# stop the container
stop:
	docker stop prdgm-server

# remove the container
remove:
	docker rm -f prdgm-server

# start container
start:
	docker start prdgm-server

# build image from Dockerfile
build:
	docker build -t prdgm-server .

# restart container
restart:
	make stop && make start


reset:
	make remove && make build

init:
	make build && make run

run:
	docker run -d prdgm-server