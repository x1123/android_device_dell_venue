## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := Thunder

TARGET_BOOTANIMATION_NAME := vertical-400X800

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit AOSP device configuration for VENUE.
$(call inherit-product, device/dell/venue/venue.mk)

#
# Setup device specific product configuration.
#
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0  
PRODUCT_DEVICE := venue
PRODUCT_NAME := cm_venue
PRODUCT_BRAND := venue
PRODUCT_MODEL := Dell-Venue
PRODUCT_MANUFACTURER := DELL
