
cmake_minimum_required(VERSION 2.8.12)
project (hellolib)

#This fills in the CMake variables with our dependencies. It also sets the right build flags for our compiler etc
include(${CMAKE_BINARY_DIR}/conanbuildinfo.cmake)
conan_basic_setup()

#Building the actual application
target_include_libraries(hellolib PRIVATE ${CMAKE_SOURCE_DIR}/hello.h ${CONAN_INCLUDE_DIRS})
add_library(hellolib hello.cpp)
target_link_libraries(hellolib ${CONAN_LIBS})