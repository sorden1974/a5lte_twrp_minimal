#
# Copyright (C) 2020 The Android Open Source Project
# Copyright (C) 2020 The TWRP Open Source Project
# Copyright (C) 2020 SebaUbuntu's TWRP device tree generator
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

DEVICE_PATH := device/samsung/a5lte

# For building with minimal manifest
ALLOW_MISSING_DEPENDENCIES := true

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a53

# Assert
TARGET_OTA_ASSERT_DEVICE := a5ulte,a5ultexx,a5lte,a5ltexx,a53gxx,a53g,a5ltedd,a5ultektt,a5ultelgt,a5lteub,a5ultekx,a5ulteskt,a5ultebmc,a5ultedv,a5ltezt

# File systems
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_BOOTIMAGE_PARTITION_SIZE := 13631488
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 167286400
BOARD_SYSTEMIMAGE_PARTITION_SIZE    := 2336096256
BOARD_USERDATAIMAGE_PARTITION_SIZE  := 12775813120
BOARD_SYSTEMIMAGE_PARTITION_TYPE := ext4
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
TARGET_COPY_OUT_VENDOR := vendor

# Kernel
BOARD_KERNEL_CMDLINE := console=null androidboot.hardware=qcom user_debug=23 msm_rtb.filter=0x3F ehci-hcd.park=3 androidboot.bootdevice=7824900.sdhci androidboot.selinux=permissive buildvariant=userdebug
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/zImage
TARGET_PREBUILT_DT := $(DEVICE_PATH)/prebuilt/dt.img
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_RAMDISK_OFFSET := 0x01000000
BOARD_KERNEL_TAGS_OFFSET := 0x00000100
BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)
BOARD_MKBOOTIMG_ARGS += --ramdisk_offset $(BOARD_RAMDISK_OFFSET)
BOARD_MKBOOTIMG_ARGS += --tags_offset $(BOARD_KERNEL_TAGS_OFFSET)
BOARD_MKBOOTIMG_ARGS += --dt $(TARGET_PREBUILT_DT)
BOARD_KERNEL_IMAGE_NAME := zImage
TARGET_KERNEL_ARCH := arm
TARGET_KERNEL_HEADER_ARCH := arm
TARGET_KERNEL_SOURCE := kernel/samsung/a5lte
TARGET_KERNEL_CONFIG := a5lte_defconfig
BOARD_CUSTOM_BOOTIMG := true

# Platform
TARGET_BOARD_PLATFORM := msm8916

# Lights
TARGET_PROVIDES_LIBLIGHT := false

# Hack: prevent anti rollback
PLATFORM_SECURITY_PATCH := 2099-12-31
VENDOR_SECURITY_PATCH := 2099-12-31
PLATFORM_VERSION := 16.1.0

# TWRP Configuration
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
TW_HAS_DOWNLOAD_MODE := true
TW_HAS_MTP := true
TW_INCLUDE_CRYPTO := true
TW_INCLUDE_NTFS_3G := true
TW_INPUT_BLACKLIST := "accelerometer\x0ahbtp_vm"
TW_MAX_BRIGHTNESS := 255
TW_MTP_DEVICE := /dev/mtp_usb
TW_NEW_ION_HEAP := true
TW_NO_REBOOT_BOOTLOADER := true
TW_NO_USB_STORAGE := true
TW_HAS_DOWNLOAD_MODE := true
TW_TARGET_USES_QCOM_BSP := false
TW_THEME := portrait_hdpi
TW_EXCLUDE_SUPERSU := true
TW_OVERRIDE_SYSTEM_PROPS := "ro.build.fingerprint;ro.build.version.incremental"
TW_USE_TOOLBOX := true
TW_EXCLUDE_TWRPAPP := true
RECOVERY_SDCARD_ON_DATA := true
LZMA_RAMDISK_TARGETS := recovery
TARGET_RECOVERY_QCOM_RTC_FIX := true
RECOVERY_GRAPHICS_USE_LINELENGTH  := true
TARGET_RECOVERY_PIXEL_FORMAT      := "RGB_565"
BOARD_HAS_NO_SELECT_BUTTON        := true
TW_DEVICE_VERSION :=  by srkndenis
