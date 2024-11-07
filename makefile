GO_MODULE := github.com/imran4u/go-grpc

.PHONY: proto-gen run-server run-client

clean:
	ifeq ($(OS), Windows_NT)
		if exist "proto-gen" rd /s /q proto-gen
		mkdir protogen
	else
		rm -fR ./proto-gen 
		mkdir -p ./proto-gen
	endif

proto-gen:
	@echo "Generating gRPC code..."
	protoc --go_opt=module=${GO_MODULE} --go_out=. \
	--go-grpc_opt=module=${GO_MODULE} --go-grpc_out=. \
	 ./proto/*.proto

run-server:
	@echo "Running the server..."
	go run server/main.go

run-client:
	@echo "Running the client..."
	go run client/main.go
