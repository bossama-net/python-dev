
all: build run

build:
	docker build -t alpine-3.12.0 .

run:
	docker run --rm -it -p 8081:8080 -v $(shell pwd):/root -w /root --name python-dev alpine-3.12.0 /bin/ash

ssh:
	docker exec -it python-dev /bin/ash
