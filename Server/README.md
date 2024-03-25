# Web-gRPC-Demo-Server

目录结构:

```bash
code01@Code01:~/project/Web-gRPC-Demo/Server$ tree .
.
├── CMakeLists.txt
├── Greeter.grpc.pb.cc
├── Greeter.grpc.pb.h
├── Greeter.pb.cc
├── Greeter.pb.h
├── ProtoGen.sh
├── README.md
├── Server.cc
└── common.cmake
```

其中 common.cmake CMakeLists.txt 为构建工具

Greeter.grpc.pb.cc Greeter.grpc.pb.h Greeter.pb.cc Greeter.pb.h 四个可通过 ProtoGen.sh 生成

Server.cc 为具体实现
