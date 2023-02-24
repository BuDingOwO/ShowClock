cmake_minimum_required(VERSION 3.24)
project(ShowClock)

set(CMAKE_CXX_STANDARD 14)

include_directories(include)
link_libraries(libeasyx.a)

add_executable(ShowClock
        Main.cpp)
