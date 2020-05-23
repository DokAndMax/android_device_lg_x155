# Boot animation
TARGET_SCREEN_HEIGHT := 854
TARGET_SCREEN_WIDTH := 480

# call dalvik heap config
$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Call device specific makefile
$(call inherit-product, device/lge/v10/device.mk)

# call the proprietary setup
$(call inherit-product, vendor/lge/v10/v10-vendor.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := lineage_v10
PRODUCT_BRAND := lge
PRODUCT_MODEL := v10
PRODUCT_MANUFACTURER := LGE
PRODUCT_DEVICE := v10
PRODUCT_GMS_CLIENTID_BASE := android-lge

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=V10ds_open_esa \
    TARGET_DEVICE=v10
    
TARGET_VENDOR_PRODUCT_NAME := v10
TARGET_VENDOR_DEVICE_NAME := v10

PRODUCT_BUILD_PROP_OVERRIDES += \
BUILD_FINGERPRINT=lge/V10ds_open_esa/v10:5.0/LRX21M/1445246250:user/release-keys \
PRIVATE_BUILD_DESC="V10ds_open_esa-user 5.0 LRX21M 1445246250 release-keys" 

TARGET_VENDOR := lge
