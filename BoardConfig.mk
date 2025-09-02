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