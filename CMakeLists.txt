cmake_minimum_required(VERSION 3.10)
project(MyCalculator) 

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED True)

add_library(libmycalculator SHARED calculator.cpp) 

add_executable(calculator_app main.cpp)
target_link_libraries(calculator_app PRIVATE libmycalculator) 