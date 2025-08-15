#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from ZPD1202 device
$(call inherit-product, device/zyb/ZPD1202/device.mk)

PRODUCT_DEVICE := ZPD1202
PRODUCT_NAME := omni_ZPD1202
PRODUCT_BRAND := ZYB
PRODUCT_MODEL := ZPD1202
PRODUCT_MANUFACTURER := zyb

PRODUCT_GMS_CLIENTID_BASE := android-zyb

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_ZPD1202-user 12 SP1A.210812.016 713_714_716_722-118 release-keys"

BUILD_FINGERPRINT := ZYB/full_ZPD1202/ZPD1202:12/SP1A.210812.016/713_714_716_722-118:user/release-keys
