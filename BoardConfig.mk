USE_CAMERA_STUB := false
# inherit from the proprietary version
-include vendor/dell/venue/BoardConfigVendor.mk
#--
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := qsd8k
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200
# CPU Stuff
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_CPU_SMP := true
TARGET_BOOTLOADER_BOARD_NAME := venue
TARGET_CORTEX_CACHE_LINE_32 := true
# Boot stuff
BOARD_KERNEL_CMDLINE := androidboot.hardware=venue 
BOARD_KERNEL_BASE := 0x20000000
BOARD_PAGE_SIZE := 2048
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
#- depending on your taste to put kernel sources
TARGET_KERNEL_SOURCE := device/dell/msm22634
TARGET_KERNEL_CONFIG := dell-venue_defconfig
#----
# Kernel prebuilt as fall back
#TARGET_PREBUILT_KERNEL := device/dell/venue/prebuilt/kernel
#TARGET_PREBUILT_RECOVERY_KERNEL := device/dell/venue/prebuilt/recovery_kernel
#----
TARGET_USERIMAGES_USE_EXT4 := false
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_USE_CUSTOM_RECOVERY_FONT := '"font_7x16.h"'

COMMON_GLOBAL_CFLAGS += -DREFRESH_RATE=60 -DQCOM_HARDWARE

TARGET_SPECIFIC_HEADER_PATH := device/dell/venue/include

USE_OPENGL_RENDERER := true

# QCOM stuffs
BOARD_USES_QCOM_HARDWARE := true
TARGET_USES_OVERLAY := true
TARGET_HAVE_BYPASS  := false
TARGET_USES_C2D_COMPOSITION := true
TARGET_USES_GENLOCK := true
TARGET_QCOM_HDMI_OUT := false
TARGET_FORCE_CPU_UPLOAD := true
BOARD_USES_QCOM_LIBS := true
BOARD_USE_QCOM_PMEM := true
BOARD_EGL_CFG := device/dell/venue/configs/egl.cfg
#-- TO DO and Check
TARGET_GRALLOC_USES_ASHMEM := false
#-- End of TO DO and Check
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
# to enable the GPS HAL
BOARD_USES_QCOM_LIBRPC := true
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := venue
# AMSS version to use for GPS
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000
# --builable for ics wpa_0_8_x
BOARD_WLAN_DEVICE := bcm4329
WIFI_EXT_MODULE_MODULE_PATH := /system/lib/modules/librasdioif.ko
WIFI_DRIVER_MODULE_PATH := /system/lib/modules/dhd.ko
WIFI_EXT_MODULE_NAME := librasdioif
WIDI_DRIVER_MODULE_NAME := dhd
WIFI_DRIVER_FW_PATH_STA := /system/vendor/firmware/fw_bcm4329.bin
WIFI_DRIVER_FW_PATH_AP := /system/vendor/firmware/fw_bcm4329_apsta.bin
WIFI_DRIVER_MODULE_ARG := "firmware_path=/system/etc/wlan/sdio-g-cdc-full11n-reclaim-roml-wme-aoe-pktfilter-keepalive-wapi.bin nvram_path=/etc/wlan/nvram.txt"
WIFI_AP_DRIVER_MODULE_ARG := /system/etc/wlan/sdio-g-cdc-roml-reclaim-wme-apsta-idsup-idauth.bin
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_wext
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
WPA_SUPPLICANT_VERSION      := VER_0_8_X
BOARD_WEXT_NO_COMBO_SCAN := true
#--- Vold stuffs
#BOARD_VOLD_MAX_PARTITIONS := 16


