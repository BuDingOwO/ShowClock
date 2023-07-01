cmake_minimum_required(VERSION 3.24)
project(ShowClock)

set(CMAKE_CXX_STANDARD 14)
set(INLUDE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/include")
set(LIB_PATH "${CMAKE_CURRENT_SOURCE_DIR}/lib")

MESSAGE(STATUS "Current Path: ${CMAKE_CURRENT_SOURCE_DIR}")

include_directories("${INLUDE_PATH}")
link_libraries("${LIB_PATH}/libeasyx.a")

# set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Llib")

add_executable(ShowClock Main.cpp)
