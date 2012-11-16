# Release name
PRODUCT_RELEASE_NAME := DV

TARGET_BOOTANIMATION_NAME := vertical-400X800

# Inherit AOSP device configuration for VENUE.
$(call inherit-product, device/dell/venue/venue.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

#
# Setup device specific product configuration.
#
PRODUCT_DEVICE := venue
PRODUCT_NAME := cm_venue
PRODUCT_BRAND := venue
PRODUCT_MODEL := Dell-Venue
PRODUCT_MANUFACTURER := DELL
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=cm_venue BUILD_ID=IML74K BUILD_DISPLAY_ID=IML74K BUILD_FINGERPRINT="dell/venue/venue:4.0.2/ICL53F/235179:user/release-keys" PRIVATE_BUILD_DESC="cm_venue 4.0.2 ICL53F 235179 release-keys"
