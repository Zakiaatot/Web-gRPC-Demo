cmake_minimum_required(VERSION 3.15)
project(
    WebGrpcDemoServer
    VERSION 0.1.0
    DESCRIPTION "Web gRPC Demo Server"
    HOMEPAGE_URL "https://github.com/zakiaatot/Web-gRPC-Demo"
    LANGUAGES CXX
)
set(CMAKE_CXX_STANDARD 17)

# Find Lib
include(common.cmake)

# Compile And Link
aux_source_directory(${PROJECT_SOURCE_DIR} SRC)
add_executable(Server ${SRC})
target_link_libraries(Server ${_REFLECTION} ${_GRPC_GRPCPP} ${_PROTOBUF_LIBPROTOBUF})
