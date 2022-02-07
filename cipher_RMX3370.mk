#
# Copyright (C) 2020-2022 The CipherOS Project
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
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit from RMX3370 device
$(call inherit-product, device/realme/RMX3370/device.mk)

# Inherit some common CipherOS stuff.
$(call inherit-product, vendor/cipher/config/common_full_phone.mk)

# Boot Animation
TARGET_BOOT_ANIMATION_RES := 1080

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := cipher_RMX3370
PRODUCT_DEVICE := RMX3370
PRODUCT_BRAND := realme
PRODUCT_MODEL := realme GT Neo 2 5G
PRODUCT_MANUFACTURER := realme

PRODUCT_GMS_CLIENTID_BASE := android-realme

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="RMX3370-user 11 RKQ1.201105.002 1641919684360 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := "realme/RMX3370/RE879AL1:11/RKQ1.201105.002/1641919684360:user/release-keys"
