# Hello wold go Grpc Example


This is a simple example of a gRPC HelloWorld application written in Go. It includes a server that responds to a greeting and a client that sends a name.

In typical grpc program there are three repository involded
1. proto-repository
2. server-repository
3. client-repository

But here for sake of simiplicity I will create all in single repository. 


## Prerequisites

- Go (1.13 or newer)
- Protocol Buffers Compiler (`protoc`) // to generate go file from .proto files.
- gRPC and Protocol Buffers plugins for Go

To install the plugins, run:

```bash
go install google.golang.org/protobuf/cmd/protoc-gen-go@latest
go install google.golang.org/grpc/cmd/protoc-gen-go-grpc@latest
