#
# Copyright (C) 2017-2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Indicate the first api level the device has been commercially launched on
PRODUCT_SHIPPING_API_LEVEL := 26

# Inherit from daisy device
AB_OTA_UPDATER := true
$(call inherit-product, device/xiaomi/daisy/device.mk)

# Inherit some common AOSP stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# PixelExperience Properties
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_INCLUDE_LIVE_WALLPAPERS := false
TARGET_INCLUDE_STOCK_ARCORE := false
TARGET_SUPPORTS_GOOGLE_RECORDER := false
TARGET_GAPPS_ARCH := arm64

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := daisy
PRODUCT_NAME := aosp_daisy
BOARD_VENDOR := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi A2 lite
PRODUCT_MANUFACTURER := Xiaomi
TARGET_VENDOR := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="daisy-user 10 QKQ1.191002.002 V11.0.21.0.QDLMIXM release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := "xiaomi/daisy/daisy_sprout:10/QKQ1.191002.002/V11.0.21.0.QDLMIXM:user/release-keys"
