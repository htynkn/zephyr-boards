zephyr_include_directories(.)

set(GIGADEVICE_HAL_PATH_RELATIVE ${CMAKE_CURRENT_SOURCE_DIR}/../../../../hal/gd/GD32E23x_Firmware_Library)
get_filename_component(GIGADEVICE_HAL_PATH ${GIGADEVICE_HAL_PATH_RELATIVE} ABSOLUTE)

message(STATUS "GigaDevice HAL Path: ${GIGADEVICE_HAL_PATH}")

zephyr_include_directories(
  ${GIGADEVICE_HAL_PATH}/CMSIS/GD/GD32E23x/Include
  ${GIGADEVICE_HAL_PATH}/GD32E23x_standard_peripheral/Include
  ${GIGADEVICE_HAL_PATH}/CMSIS
  ${GIGADEVICE_HAL_PATH}/GD32E23x_standard_peripheral
  ${GIGADEVICE_HAL_PATH}/Template
)

file(GLOB_RECURSE hal_peripheral_sources
  "${GIGADEVICE_HAL_PATH}/GD32E23x_standard_peripheral/Source/*.c"
)

zephyr_sources(
	soc.c
  ${GIGADEVICE_HAL_PATH}/CMSIS/GD/GD32E23x/Source/system_gd32e23x.c
  ${hal_peripheral_sources}
)

set(SOC_LINKER_SCRIPT ${ZEPHYR_BASE}/include/zephyr/arch/arm/cortex_m/scripts/linker.ld CACHE INTERNAL "")