set(Core_ROOT_DIRS ${PROJ_REPO_TOP_DIR}/modules/core)

set(_WINDOWS FALSE)
if("${CMAKE_SYSTEM_NAME}" MATCHES "Windows")
    set(_WINDOWS TRUE)
endif()

set(_LINUX FALSE)
if("${CMAKE_SYSTEM_NAME}" MATCHES "Linux")
    set(_LINUX TRUE)
endif()

find_path(Core_INCLUDE_DIR
    NAMES "core_api.h"
    PATHS "${Core_ROOT_DIRS}/*")

find_library(Core_LIBRARIES
    NAMES "libcore.a"
    HINTS "${Core_ROOT_DIRS}/output")

if(Core_INCLUDE_DIR)
    if(NOT Core_LIBRARIES)
    endif()
    set(Core_FOUND true)
    set(Core_INCLUDE_DIRS ${Core_INCLUDE_DIR})
endif()