#
# Copyright (C) 2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#
 
# Inherit from sm8350-common
$(call inherit-product, device/xiaomi/sm8350-common/common.mk)

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Fingerprint
PRODUCT_SYSTEM_PROPERTIES += \
    persist.vendor.fingerprint.type=udfps_optical \
    persist.vendor.fingerprint.sensor_location=540|2149|103

PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.sensors.xiaomi.udfps=true

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay

# Sensor
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/sensors/hals.conf:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/hals.conf

# Call the proprietary setup
$(call inherit-product, vendor/xiaomi/taoyao/taoyao-vendor.mk)