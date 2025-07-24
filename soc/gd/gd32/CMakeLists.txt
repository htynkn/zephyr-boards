add_subdirectory(${SOC_SERIES})

set(GIGADEVICE_COMMON_PATH_RELATIVE ${CMAKE_CURRENT_SOURCE_DIR}/../../../hal/gd/common_include)
get_filename_component(GIGADEVICE_COMMON_PATH ${GIGADEVICE_COMMON_PATH_RELATIVE} ABSOLUTE)

message(STATUS "GigaDevice Common Path: ${GIGADEVICE_COMMON_PATH}")

zephyr_include_directories(
  ${GIGADEVICE_COMMON_PATH}
)