#!/bin/bash
npx protoc --ts_out ./src/api/ --proto_path ../Proto Greeter.proto 