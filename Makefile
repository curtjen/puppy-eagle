CURRENT_DIR := $(shell pwd)

build:
	@docker-compose build

run:
	@docker-compose run react_native_app

clean:
	@docker-compose rm

