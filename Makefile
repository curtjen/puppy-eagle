build:  # Development build
	@docker-compose build

run:  # Run development environment
	@docker-compose run --rm --service-ports react_native_app

clean:  # Clean up Docker container
	@docker-compose rm
