USE_CAMERA_STUB := false
# inherit from the proprietary version
-include vendor/dell/venue/BoardConfigVendor.mk
#--
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := qsd8k
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200
TARGET_NO_RECOVERY := false
TARGET_NO_RADIOIMAGE := true
TARGET_PROVIDES_LIBAUDIO := false
# CPU Stuff
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_NEON := true
TARGET_CORTEX_CACHE_LINE_32 := true
# Boot stuff
BOARD_KERNEL_CMDLINE := androidboot.hardware=venue 
BOARD_KERNEL_BASE := 0x20000000
BOARD_PAGE_SIZE := 2048
TARGET_BOOTLOADER_BOARD_NAME := venue
#---
TARGET_GLOBAL_CFLAGS +=-mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS +=-mfpu=neon -mfloat-abi=softfp
#--
### cat /proc/mtd cm7
# dev:    size   erasesize  name
# mtd0: 00500000 00020000 "boot"
# mtd1: 00600000 00020000 "recovery"
# mtd2: 00600000 00020000 "recovery_bak"
# mtd3: 00040000 00020000 "LogFilter"
# mtd4: 00300000 00020000 "oem_log"
# mtd5: 10400000 00020000 "system"
# mtd6: 22600000 00020000 "userdata"
# mtd7: 06600000 00020000 "cache"

BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00500000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00600000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x10400000
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0X22600000

# Kernel built in
#---
TARGET_KERNEL_SOURCE := kernel/dell/venue
TARGET_KERNEL_CONFIG := dell-venue_defconfig
KERNEL_DEFCONFIG := dell-venue_defconfig
#----
# Kernel prebuilt as fall back
TARGET_PREBUILT_KERNEL := device/dell/venue/prebuilt/kernel
TARGET_PREBUILT_RECOVERY_KERNEL := device/dell/venue/prebuilt/recovery_kernel
#----

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_USE_CUSTOM_RECOVERY_FONT := '"font_7x16.h"'

COMMON_GLOBAL_CFLAGS += -DREFRESH_RATE=60 -DQCOM_HARDWARE

TARGET_SPECIFIC_HEADER_PATH := device/dell/venue/include

USE_OPENGL_RENDERER := true

# QCOM stuffs
BOARD_USES_QCOM_HARDWARE := true
TARGET_USES_OVERLAY := false
TARGET_HAVE_BYPASS  := false
TARGET_USES_C2D_COMPOSITION := false
TARGET_USES_GENLOCK := true
TARGET_QCOM_HDMI_OUT := false
TARGET_FORCE_CPU_UPLOAD := true
BOARD_USES_QCOM_LIBS := true
BOARD_USE_QCOM_PMEM := true
BOARD_EGL_CFG := device/dell/venue/configs/egl.cfg
#-- TO DO and Check
TARGET_GRALLOC_USES_ASHMEM := true
#-- End of TO DO and Check
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
# to enable the GPS HAL
BOARD_USES_QCOM_LIBRPC := true
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := venue
# AMSS version to use for GPS
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000
#---
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/usb_mass_storage/lun0/file
#---
BOARD_USE_LEGACY_TOUCHSCREEN := true
BOARD_USE_OPENSSL_ENGINE := true
TARGET_PROVIDES_INIT_RC := true
BOARD_HAS_FLIPPED_SCREEN := true
TARGET_LIBAGL_USE_GRALLOC_COPYBITS := true
#---
# Venue Camera
BOARD_CAMERA_USE_GETBUFFERINFO := true
BOARD_USE_CAF_LIBCAMERA_GB_REL := true
BOARD_USE_CAF_LIBCAMERA := true
# Avoid glitch. Essential config!
BOARD_NO_RGBX_8888 := true
BOARD_NO_32BPP := true
# -- Trivial WPA need to solve

BOARD_WPA_SUPPLICANT_DRIVER := WEXT
WPA_SUPPLICANT_VERSION      := VER_0_5_X
BOARD_WLAN_DEVICE := bcm4329
WIFI_DRIVER_MODULE_PATH := "/system/lib/modules/dhd.ko"
WIFI_DRIVER_MODULE_ARG := "firmware_path=/system/etc/wlan/sdio-g-cdc-full11n-reclaim-roml-wme-aoe-pktfilter-keepalive-wapi.bin nvram_path=/etc/wlan/nvram.txt"
WIFI_DRIVER_MODULE_NAME := "dhd"
WIFI_DRIVER_FW_STA_PATH := "/system/etc/wlan/sdio-g-cdc-roml-reclaim-wme-apsta-idsup-idauth.bin"


#############DO NOT REMOVE ###########################
# Copyright (c) 2009, Code Aurora Forum.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
############ DO NOT REMOVE ###########################


