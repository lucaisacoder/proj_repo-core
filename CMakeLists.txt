find_package(App REQUIRED)
if(App_FOUND)
    message("found app")
else()
    message("not found app")
endif()

# 设置依赖
#add_subdirectory(${PROJ_REPO_TOP_DIR}/modules/core proj_core)
#include_directories(${PROJ_REPO_TOP_DIR}/modules/core/inc_pub)
#message("aaaa ${App_ROOT_DIRS}")
#add_subdirectory(${App_ROOT_DIRS})

include_directories(
    ${PROJ_REPO_TOP_DIR}/modules/public
    ${PROJ_REPO_TOP_DIR}/modules/osal/inc_pub
    ${App_INCLUDE_DIRS})
aux_source_directory(src DIR_SRCS)
add_library (proj_core ${DIR_SRCS})
target_link_libraries(proj_core ${App_LIBRARIES})