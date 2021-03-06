#
# Copyright 2013 The Android Open-Source Project
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
LOCAL_PATH := device/lge/v10

# Board
TARGET_BOARD_PLATFORM := mt6582
MTK_BOARD_PLATFORMS := mt6582
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
ARCH_ARM_HAVE_VFP := true
TARGET_CPU_SMP := true
TARGET_ARCH := arm
ARCH_ARM_HAVE_NEON := true
TARGET_NO_BOOTLOADER := true
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_ARCH_VARIANT_CPU := cortex-a7
TARGET_CPU_VARIANT:= cortex-a7
TARGET_CPU_MEMCPY_OPT_DISABLE := true

# Storage allocations
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1887436800
BOARD_USERDATAIMAGE_PARTITION_SIZE := 4551344128
BOARD_CACHEIMAGE_PARTITION_SIZE := 734003200
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_FLASH_BLOCK_SIZE := 131072

# kernel stuff
#BOARD_CUSTOM_BOOTIMG_MK := device/lge/v10/tools/bootimg.mk
#TARGET_PREBUILT_KERNEL := device/lg/v10/kernel
MTK_PLATFORM := mt6582
TARGET_KERNEL_SOURCE := kernel/lge/v10
TARGET_KERNEL_CONFIG := v10_defconfig
BOARD_KERNEL_CMDLINE := androidboot.hardware=mt6582 androidboot.selinux=permissive
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x04000000 --tags_offset 0x00000100 --base 0x80000000
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_PAGESIZE := 2048

# TWRP stuff
TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID := true
TW_NO_USB_STORAGE := true
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
TW_INCLUDE_CRYPTO := true
TW_CUSTOM_POWER_BUTTON := 116
TW_CUSTOM_CPU_TEMP_PATH := /sys/class/thermal/thermal_zone5/temp
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
TW_MAX_BRIGHTNESS := 255
TW_SCREEN_BLANK_ON_BOOT := true
BOARD_HAS_NO_SELECT_BUTTON := true

#RECOVERY_VARIANT := twrp

# Fstab for TWRP
#TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/rootdir/root/twrp.fstab

# Fstab for building
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/rootdir/root/recovery.fstab

# Deodex
WITH_DEXPREOPT := false
DISABLE_DEXPREOPT := true

# Block based ota
BLOCK_BASED_OTA := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_MTK := true
BOARD_BLUETOOTH_DOES_NOT_USE_RFKILL := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(LOCAL_PATH)/bluetooth

# OpenGL
USE_OPENGL_RENDERER := true
BOARD_EGL_WORKAROUND_BUG_10194508 := true
TARGET_HAS_LEGACY_CAMERA_HAL1 := true

# FM
MTK_FM_SUPPORT :=true
MTK_FM_RX_SUPPORT :=true

# MTK_WLAN_SUPPORT
WPA_SUPPLICANT_VERSION           := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_mt66xx
BOARD_HOSTAPD_DRIVER             := NL80211
BOARD_HOSTAPD_PRIVATE_LIB        := lib_driver_cmd_mt66xx
WIFI_DRIVER_FW_PATH_PARAM:="/dev/wmtWifi"
WIFI_DRIVER_FW_PATH_STA:=STA
WIFI_DRIVER_FW_PATH_AP:=AP
WIFI_DRIVER_FW_PATH_P2P:=P2P

# USE custom policy
#USE_CUSTOM_AUDIO_POLICY := 1

# Shims
TARGET_LD_SHIM_LIBS:= \
	/system/lib/libui.so|libshim_audio.so \
	/system/lib/libmedia.so|libshim_ui.so \
	/system/lib/liblog.so|libshim_log.so \
	/system/lib/libaudioflinger.so|libshim_log.so \
	/system/lib/libaudiopolicyservice.so|libshim_log.so \
	/system/lib/libaudioresampler.so|libshim_log.so \
	/system/lib/libcutils.so|libshim_log.so \
	/system/lib/libfmjni.so|libshim_log.so \
	/system/lib/libgui.so|libshim_log.so \
	/system/lib/libmedia.so|libshim_log.so \
	/system/lib/libmedia_jni.so|libshim_log.so \
	/system/lib/libmediaplayerservice.so|libshim_log.so \
	/system/lib/libmtp.so|libshim_log.so \
	/system/lib/libskia.so|libshim_log.so \
	/system/lib/libstagefright.so|libshim_log.so \
	/system/lib/libstagefright_httplive.so|libshim_log.so \
	/system/lib/libsurfaceflinger.so|libshim_log.so \
	/system/lib/libui.so|libshim_log.so \
	/system/lib/libwifi-service.so|libshim_log.so

# Fix scaling on older omx
TARGET_OMX_LEGACY_RESCALING := true

#Mediatek flags
BOARD_HAS_MTK_HARDWARE := true
MTK_HARDWARE := true

# FRAMEWORK WITH OUT SYNC
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true

#Tap 2 wake
TARGET_TAP_TO_WAKE_NODE := "/sys/devices/virtual/input/lge_touch/tap2wake"

# Fonts
EXTENDED_FONT_FOOTPRINT := true

# Offmode Charging
#WITH_CM_CHARGER := true
BOARD_CHARGER_DISABLE_INIT_BLANK := true
BOARD_CHARGER_ENABLE_SUSPEND := false
BACKLIGHT_PATH := "/sys/class/leds/lcd-backlight/brightness"

BOARD_CHARGING_CMDLINE_NAME := "androidboot.mode"
BOARD_CHARGING_CMDLINE_VALUE := "chargerlogo"

TARGET_SYSTEM_PROP := device/lge/v10/system.prop

# Dual SIM
SIM_COUNT := 2
TARGET_GLOBAL_CFLAGS += -DANDROID_MULTI_SIM
TARGET_GLOBAL_CPPFLAGS += -DANDROID_MULTI_SIM

BOARD_EGL_CFG := device/lge/v10/rootdir/system/etc/egl.cfg


# Flags
TARGET_GLOBAL_CFLAGS   += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_USERIMAGES_USE_EXT4:=true
USE_CAMERA_STUB := true

# SELinux
BOARD_SEPOLICY_DIRS += \
    device/lge/v10/sepolicy

# SECCOMP
BOARD_SECCOMP_POLICY += device/lge/v10/seccomp
