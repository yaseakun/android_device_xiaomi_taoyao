#
# Copyright (C) 2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/xiaomi/taoyao

# Inherit from sm8350-common
include device/xiaomi/sm8350-common/BoardConfigCommon.mk

# Include proprietary files
include vendor/xiaomitaoyao/BoardConfigVendor.mk

# Board
TARGET_BOOTLOADER_BOARD_NAME := taoyao

# Kernel Modules
TARGET_KERNEL_SOURCE := device/xiaomi/taoyao-kernel/kernel-headers
BOARD_KERNEL_MODULE_DIRS := 5.4-gki
BOARD_VENDOR_RAMDISK_KERNEL_MODULES := \
    $(DEVICE_PATH)-kernel/modules/focaltech_touch.ko \
    $(DEVICE_PATH)-kernel/modules/goodix_core.ko \
    $(DEVICE_PATH)-kernel/modules/hwid.ko \
    $(DEVICE_PATH)-kernel/modules/msm_drm.ko \
    $(DEVICE_PATH)-kernel/modules/xiaomi_touch.ko
BOARD_VENDOR_RAMDISK_KERNEL_MODULES_LOAD := $(BOARD_VENDOR_RAMDISK_KERNEL_MODULES)
BOARD_VENDOR_KERNEL_MODULES := $(wildcard $(DEVICE_PATH)-kernel/modules/*.ko)
BOARD_VENDOR_KERNEL_MODULES_LOAD := $(BOARD_VENDOR_KERNEL_MODULES)
BOARD_VENDOR_KERNEL_MODULES_5.4-gki := $(wildcard $(DEVICE_PATH)-kernel/modules/5.4-gki/*.ko)
BOARD_VENDOR_KERNEL_MODULES_LOAD_5.4-gki := $(BOARD_VENDOR_KERNEL_MODULES_5.4-gki)
TARGET_NO_KERNEL_OVERRIDE := true
BOARD_PREBUILT_DTBIMAGE_DIR := $(DEVICE_PATH)-kernel/dtb
BOARD_PREBUILT_DTBOIMAGE := $(DEVICE_PATH)-kernel/dtbo.img

PRODUCT_COPY_FILES += \
	$(DEVICE_PATH)-kernel/kernel:kernel

# Partitions
BOARD_DTBOIMG_PARTITION_SIZE := 25165824
BOARD_USERDATAIMAGE_PARTITION_SIZE := 113254576128

# Vibrator
SOONG_CONFIG_xiaomiSm8350Vars_vibrator_use_effect_stream := true