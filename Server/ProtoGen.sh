#!/bin/bash
protoc --cpp_out=./ -I ../Proto/ Greeter.proto
protoc --grpc_out=./ --plugin=protoc-gen-grpc=/usr/local/bin/grpc_cpp_plugin -I ../Proto/ Greeter.proto