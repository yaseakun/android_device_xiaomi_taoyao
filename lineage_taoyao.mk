#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from lisa device
$(call inherit-product, device/xiaomi/taoyao/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_taoyao
PRODUCT_DEVICE := taoyao
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := 2203129G

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

SystemName := taoyao_global
SystemDevice := taoyao

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="taoyao_global-user 14 UKQ1.231003.002 V816.0.21.0.ULIMIXM release-keys" \
    DeviceName=$(SystemDevice) \
    DeviceProduct=$(SystemName)

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := Xiaomi/taoyao_global/taoyao:14/UKQ1.231003.002/V816.0.21.0.ULIMIXM:user/release-keys