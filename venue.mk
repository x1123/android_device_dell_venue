$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

# Inherit non-open-source blobs.
$(call inherit-product-if-exists, vendor/dell/venue/venue-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/dell/venue/overlay

PRODUCT_TAGS += dalvik.gc.type-precise
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.heapstartsize=5m \
    dalvik.vm.heapgrowthlimit=32m \
    dalvik.vm.heapsize=76m

PRODUCT_AAPT_CONFIG := normal mdpi ldpi
PRODUCT_AAPT_PREF_CONFIG := mdpi

# Init file
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/init/init.rc:root/init.rc \
    $(LOCAL_PATH)/init/ueventd.rc:root/ueventd.rc \
    $(LOCAL_PATH)/init/init.venue.rc:root/init.venue.rc \
    $(LOCAL_PATH)/init/init.logo.rle:root/init.logo.rle \
    $(LOCAL_PATH)/init/init.logo+factory.rle:root/init.logo_factory.rle

# Configuration
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/8k_handset.kl:system/usr/keylayout/8k_handset.kl \
    $(LOCAL_PATH)/configs/surf_keypad.kl:system/usr/keylayout/surf_keypad.kl \
    $(LOCAL_PATH)/configs/qwerty.kl:system/usr/keylayout/qwerty.kl \
    $(LOCAL_PATH)/configs/surf_keypad.kcm.bin:system/usr/keychars/surf_keypad.kcm.bin \
    $(LOCAL_PATH)/configs/mXT224_touchscreen.idc:system/usr/idc/mXT224_touchscreen.idc \
    $(LOCAL_PATH)/configs/vold.fstab:system/etc/vold.fstab \
    $(LOCAL_PATH)/configs/01_qcomm_omx.cfg:system/etc/01_qcomm_omx.cfg \
    $(LOCAL_PATH)/configs/gps.conf:system/etc/gps.conf \
    $(LOCAL_PATH)/configs/init.venue.fm.sh:system/etc/init.venue.fm.sh


# Wifi
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    $(LOCAL_PATH)/wifi/dhd.ko:system/lib/modules/dhd.ko


# Sensor
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/libs/sensors.venue.so:system/lib/hw/sensors.venue.so
# GPS
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/libs/gps.venue.so:system/lib/hw/gps.venue.so \

# Media Profile
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media_profiles.xml:system/etc/media_profiles.xml 
    
# APN
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/apns-conf.xml:system/etc/apns-conf.xml
       
# Vsync
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/libs/vsync.ko:system/lib/modules/vsync.ko

$(call inherit-product, build/target/product/full.mk)

# Permissions
PRODUCT_COPY_FILES += \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml \
    frameworks/base/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/base/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/base/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/base/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/base/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/base/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/base/data/etc/android.software.sip.xml:system/etc/permissions/android.software.sip.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml

#Hardware
PRODUCT_PACKAGES += \
    camera.qsd8k \
    gralloc.qsd8k \
    copybit.qsd8k \
    hwcomposer.qsd8k \
    libgenlock \
    liboverlay \
    libtilerenderer \
    libQcomUI \
    audio.primary.venue \
    audio.a2dp.default \
    libOmxCore \
    libOmxVenc \
    libOmxVidEnc \
    libcamera
# OMX 
PRODUCT_PACKAGES += \
    libstagefrighthw \
    libmm-omxcore \
    libOmxCore

##kernel
ifeq ($(TARGET_PREBUILT_KERNEL),)
LOCAL_KERNEL := device/dell/venue/kernel
else
LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := cm_venue
PRODUCT_BRAND := venue
PRODUCT_DEVICE := venue
PRODUCT_MODEL := Dell-Venue
PRODUCT_MANUFACTURER := DELL
#
# Copyright (C) 2009 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
