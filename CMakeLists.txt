cmake_minimum_required(VERSION 3.17)
project(share_key_platform)

set(CMAKE_CXX_STANDARD 14)

add_executable(share_key_platform main.cpp entity/SecKey.hpp utils/SecKeyShm.cpp utils/SecKeyShm.h
        proto/network_msg.pb.h proto/network_msg.pb.cc utils/test.cpp)

target_link_libraries(share_key_platform -lev -lprotobuf -lpthread)