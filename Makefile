build_OLD:
	@sudo docker build -t react_native_app:latest ./

run_OLD:
	@sudo docker run -it --rm --name react_native_app-latest \
	-p 19006:19006 -v $(pwd):/opt/react_native_app/app:delegated \
	-v /Users/cjensen/Documents/github/docker-expo-react-native/react_native_app/package.json:/opt/react_native_app/package.json \
	-v /Users/cjensen/Documents/github/docker-expo-react-native/react_native_app/yarn.lock:/opt/react_native_app/yarn.lock \
	-v notused:/opt/react_native_app/app/node_modules react_native_app:latest

clean:
	@sudo docker stop react_native_app-latest
	@sudo docker rm react_native_app-latest

build:
	@docker-compose build

run:
	@docker-compose up