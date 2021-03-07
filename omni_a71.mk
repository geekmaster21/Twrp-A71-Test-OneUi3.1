#
# Copyright (C) 2020 The Evolution X Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product-if-exists, $(SRC_TARGET_DIR)/product/embedded.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Inherit from a71 device makefile
$(call inherit-product, device/samsung/a71/device.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)
$(call inherit-product, vendor/omni/config/gsm.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := omni_a71
PRODUCT_DEVICE := a71
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := SM-a715F
PRODUCT_MANUFACTURER := Samsung

# Build info
BUILD_FINGERPRINT := "samsung/a71nsxx/a71:11/RP1A.200720.012/A715FXXU3BUB5:user/release-keys"
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=a71 \
    PRODUCT_NAME=a71 \
    PRIVATE_BUILD_DESC="a71nsxx-user 11 RP1A.200720.012 A715FXXU3BUB5 release-keys"

TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080
