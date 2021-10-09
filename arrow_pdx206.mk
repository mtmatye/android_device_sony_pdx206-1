#
# Copyright (C) 2018-2020 The LineageOS Project
# Copyright (C) 2021 The PixelExperience Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device.mk
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Inherit some common Arrow OS stuff
$(call inherit-product, vendor/arrow/config/common.mk)

# Boot Animation
TARGET_BOOT_ANIMATION_RES := 1080

# GAPPS
# WITH_GAPPS := true
# TARGET_GAPPS_ARCH := arm64
# IS_PHONE := true

# Face-Unlock
TARGET_FACE_UNLOCK_SUPPORTED := true

# DualSim
PRODUCT_DEVICE_DS := true

PRODUCT_BRAND := Sony
PRODUCT_DEVICE := pdx206
PRODUCT_MANUFACTURER := Sony

PRODUCT_NAME := arrow_pdx206
PRODUCT_MODEL := Xperia 5 II

PRODUCT_GMS_CLIENTID_BASE := android-sonymobile

TARGET_VENDOR_PRODUCT_NAME := pdx206

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="Sony/XQ-AS72/XQ-AS72 11 58.1.A.5.159 058001A005015901542256272 user release-keys"
BUILD_FINGERPRINT := Sony/XQ-AS72/XQ-AS72:11/58.1.A.5.159/058001A005015901542256272:user/release-keys