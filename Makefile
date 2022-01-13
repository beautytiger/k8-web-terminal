BINARY=k8-web-terminal

mod:
	go mod tidy && go mod vendor

clean:
	go clean
	rm bin/${BINARY}

build:
	GOARCH=amd64 GOOS=linux go build -o bin/${BINARY}

image: build
	docker build -t harbor.beautytiger.home/beautytiger/k8s-web-terminal .

release: image
	docker push harbor.beautytiger.home/beautytiger/k8s-web-terminal
