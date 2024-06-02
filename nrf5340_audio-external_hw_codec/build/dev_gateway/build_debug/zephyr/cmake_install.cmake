# Install script for directory: C:/ncs/v2.2.0/zephyr

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Program Files (x86)/Zephyr-Kernel")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "TRUE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "C:/ncs/toolchains/v2.2.0/opt/zephyr-sdk/arm-zephyr-eabi/bin/arm-zephyr-eabi-objdump.exe")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/ncs/v2.2.0/nrf/applications/nrf5340_audio-external_hw_codec/build/dev_gateway/build_debug/zephyr/arch/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/ncs/v2.2.0/nrf/applications/nrf5340_audio-external_hw_codec/build/dev_gateway/build_debug/zephyr/lib/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/ncs/v2.2.0/nrf/applications/nrf5340_audio-external_hw_codec/build/dev_gateway/build_debug/zephyr/soc/arm/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/ncs/v2.2.0/nrf/applications/nrf5340_audio-external_hw_codec/build/dev_gateway/build_debug/zephyr/boards/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/ncs/v2.2.0/nrf/applications/nrf5340_audio-external_hw_codec/build/dev_gateway/build_debug/zephyr/subsys/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/ncs/v2.2.0/nrf/applications/nrf5340_audio-external_hw_codec/build/dev_gateway/build_debug/zephyr/drivers/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/ncs/v2.2.0/nrf/applications/nrf5340_audio-external_hw_codec/build/dev_gateway/build_debug/modules/nrf/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/ncs/v2.2.0/nrf/applications/nrf5340_audio-external_hw_codec/build/dev_gateway/build_debug/modules/hostap/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/ncs/v2.2.0/nrf/applications/nrf5340_audio-external_hw_codec/build/dev_gateway/build_debug/modules/mcuboot/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/ncs/v2.2.0/nrf/applications/nrf5340_audio-external_hw_codec/build/dev_gateway/build_debug/modules/mbedtls/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/ncs/v2.2.0/nrf/applications/nrf5340_audio-external_hw_codec/build/dev_gateway/build_debug/modules/trusted-firmware-m/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/ncs/v2.2.0/nrf/applications/nrf5340_audio-external_hw_codec/build/dev_gateway/build_debug/modules/cjson/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/ncs/v2.2.0/nrf/applications/nrf5340_audio-external_hw_codec/build/dev_gateway/build_debug/modules/azure-sdk-for-c/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/ncs/v2.2.0/nrf/applications/nrf5340_audio-external_hw_codec/build/dev_gateway/build_debug/modules/memfault-firmware-sdk/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/ncs/v2.2.0/nrf/applications/nrf5340_audio-external_hw_codec/build/dev_gateway/build_debug/modules/cirrus-logic/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/ncs/v2.2.0/nrf/applications/nrf5340_audio-external_hw_codec/build/dev_gateway/build_debug/modules/openthread/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/ncs/v2.2.0/nrf/applications/nrf5340_audio-external_hw_codec/build/dev_gateway/build_debug/modules/canopennode/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/ncs/v2.2.0/nrf/applications/nrf5340_audio-external_hw_codec/build/dev_gateway/build_debug/modules/chre/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/ncs/v2.2.0/nrf/applications/nrf5340_audio-external_hw_codec/build/dev_gateway/build_debug/modules/cmsis/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/ncs/v2.2.0/nrf/applications/nrf5340_audio-external_hw_codec/build/dev_gateway/build_debug/modules/fatfs/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/ncs/v2.2.0/nrf/applications/nrf5340_audio-external_hw_codec/build/dev_gateway/build_debug/modules/hal_nordic/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/ncs/v2.2.0/nrf/applications/nrf5340_audio-external_hw_codec/build/dev_gateway/build_debug/modules/st/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/ncs/v2.2.0/nrf/applications/nrf5340_audio-external_hw_codec/build/dev_gateway/build_debug/modules/hal_wurthelektronik/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/ncs/v2.2.0/nrf/applications/nrf5340_audio-external_hw_codec/build/dev_gateway/build_debug/modules/libmetal/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/ncs/v2.2.0/nrf/applications/nrf5340_audio-external_hw_codec/build/dev_gateway/build_debug/modules/liblc3/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/ncs/v2.2.0/nrf/applications/nrf5340_audio-external_hw_codec/build/dev_gateway/build_debug/modules/littlefs/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/ncs/v2.2.0/nrf/applications/nrf5340_audio-external_hw_codec/build/dev_gateway/build_debug/modules/loramac-node/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/ncs/v2.2.0/nrf/applications/nrf5340_audio-external_hw_codec/build/dev_gateway/build_debug/modules/lvgl/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/ncs/v2.2.0/nrf/applications/nrf5340_audio-external_hw_codec/build/dev_gateway/build_debug/modules/lz4/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/ncs/v2.2.0/nrf/applications/nrf5340_audio-external_hw_codec/build/dev_gateway/build_debug/modules/mipi-sys-t/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/ncs/v2.2.0/nrf/applications/nrf5340_audio-external_hw_codec/build/dev_gateway/build_debug/modules/nanopb/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/ncs/v2.2.0/nrf/applications/nrf5340_audio-external_hw_codec/build/dev_gateway/build_debug/modules/nrf_hw_models/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/ncs/v2.2.0/nrf/applications/nrf5340_audio-external_hw_codec/build/dev_gateway/build_debug/modules/open-amp/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/ncs/v2.2.0/nrf/applications/nrf5340_audio-external_hw_codec/build/dev_gateway/build_debug/modules/picolibc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/ncs/v2.2.0/nrf/applications/nrf5340_audio-external_hw_codec/build/dev_gateway/build_debug/modules/segger/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/ncs/v2.2.0/nrf/applications/nrf5340_audio-external_hw_codec/build/dev_gateway/build_debug/modules/tinycbor/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/ncs/v2.2.0/nrf/applications/nrf5340_audio-external_hw_codec/build/dev_gateway/build_debug/modules/tinycrypt/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/ncs/v2.2.0/nrf/applications/nrf5340_audio-external_hw_codec/build/dev_gateway/build_debug/modules/TraceRecorder/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/ncs/v2.2.0/nrf/applications/nrf5340_audio-external_hw_codec/build/dev_gateway/build_debug/modules/uoscore-uedhoc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/ncs/v2.2.0/nrf/applications/nrf5340_audio-external_hw_codec/build/dev_gateway/build_debug/modules/zcbor/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/ncs/v2.2.0/nrf/applications/nrf5340_audio-external_hw_codec/build/dev_gateway/build_debug/modules/zscilib/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/ncs/v2.2.0/nrf/applications/nrf5340_audio-external_hw_codec/build/dev_gateway/build_debug/modules/conf/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/ncs/v2.2.0/nrf/applications/nrf5340_audio-external_hw_codec/build/dev_gateway/build_debug/modules/nrfxlib/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/ncs/v2.2.0/nrf/applications/nrf5340_audio-external_hw_codec/build/dev_gateway/build_debug/modules/connectedhomeip/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/ncs/v2.2.0/nrf/applications/nrf5340_audio-external_hw_codec/build/dev_gateway/build_debug/zephyr/kernel/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/ncs/v2.2.0/nrf/applications/nrf5340_audio-external_hw_codec/build/dev_gateway/build_debug/zephyr/cmake/flash/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/ncs/v2.2.0/nrf/applications/nrf5340_audio-external_hw_codec/build/dev_gateway/build_debug/zephyr/cmake/usage/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/ncs/v2.2.0/nrf/applications/nrf5340_audio-external_hw_codec/build/dev_gateway/build_debug/zephyr/cmake/reports/cmake_install.cmake")
endif()

