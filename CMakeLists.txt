# CMake 最低版本号要求
cmake_minimum_required (VERSION 2.8)

# 指定top路径
get_filename_component(PROJ_REPO_TOP_DIR ${CMAKE_CURRENT_SOURCE_DIR}/../.. ABSOLUTE)

# 设置cmake工具路径
set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH}
    ${PROJ_REPO_TOP_DIR}/modules/app/cmake
    ${PROJ_REPO_TOP_DIR}/modules/core/cmake
    ${PROJ_REPO_TOP_DIR}/modules/osal/cmake
    ${PROJ_REPO_TOP_DIR}/modules/public/cmake)

find_package(App REQUIRED)
if(App_FOUND)
    include_directories(${App_INCLUDE_DIRS})
else()
    message("not found app")
endif()

find_package(Osal REQUIRED)
if(Osal_FOUND)
    include_directories(${Osal_INCLUDE_DIRS})
else()
    message("not found osal")
endif()

find_package(Public REQUIRED)
if(Public_FOUND)
    include_directories(${Public_INCLUDE_DIRS})
else()
    message("not found Public")
endif()

aux_source_directory(src DIR_SRCS)
add_library (core STATIC ${DIR_SRCS})