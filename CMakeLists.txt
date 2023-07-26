cmake_minimum_required(VERSION 2.8)

project(Snake)

set(PROJECT_DIR ${CMAKE_SOURCE_DIR})

set(PROJECT_INCLUDE_DIR ${PROJECT_DIR}/include)

set(PROJECT_SOURCE_DIR ${PROJECT_DIR}/src)

set(PROJECT_SOURCES
            ${PROJECT_SOURCE_DIR}/main.cpp
            ${PROJECT_SOURCE_DIR}/ShaderProgram.cpp
            ${PROJECT_SOURCE_DIR}/Square.cpp
            ${PROJECT_SOURCE_DIR}/glad.c
            )

set(PROJECT_HEADERS 
            ${PROJECT_INCLUDE_DIR}/Food.hpp
            )

set(glfw3_DIR ${PROJECT_DIR}/../dependencies/GLFW/lib/cmake/glfw3)
set(GLM_INCLUDE_DIR ${PROJECT_DIR}/../dependencies)
find_package(glfw3 3.2 REQUIRED)

include_directories(
    ${PROJECT_INCLUDE_DIR}
    ${GLM_INCLUDE_DIR}
    )

add_executable(${PROJECT_NAME} ${PROJECT_SOURCES})

target_link_libraries(${PROJECT_NAME} glfw)