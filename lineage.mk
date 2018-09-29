# Needed stuff
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit some common CM stuff.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Call device specific makefile
$(call inherit-product, device/lge/v10/lineage_v10.mk)

LOCAL_PATH := device/lge/v10

# Common CM stuff
CM_BUILD := v10

$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := lineage_v10
PRODUCT_DEVICE := v10
PRODUCT_BRAND := lge
PRODUCT_MANUFACTURER := lge
PRODUCT_MODEL := v10

# Boot animation
TARGET_SCREEN_HEIGHT := 854
TARGET_SCREEN_WIDTH := 480

# Release name
PRODUCT_RELEASE_NAME := v10
