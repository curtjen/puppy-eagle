build:  # Development build
	@docker-compose build

run:  # Run development environment
	@docker-compose run react_native_app

clean:  # Clean up Docker container
	@docker-compose rm

