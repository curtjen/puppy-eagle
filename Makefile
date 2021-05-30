CURRENT_DIR := $(shell pwd)

build_docker:  # Build Docker image
	@sudo docker build -t react_native_app:latest ./

run: # Run default
	@( \
		sudo docker run -it --rm --name react_native_app-latest \
		-p 19006:19006 -v $(CURRENT_DIR):/opt/react_native_app/app:delegated \
		-v $(CURRENT_DIR)/react_native_app/package.json:/opt/react_native_app/app/package.json \
		-v $(CURRENT_DIR)/react_native_app/yarn.lock:/opt/react_native_app/app/yarn.lock \
		-v notused:/opt/react_native_app/app/node_modules react_native_app:latest; \
	)

clean:
	@sudo docker stop react_native_app-latest
	@sudo docker rm react_native_app-latest
