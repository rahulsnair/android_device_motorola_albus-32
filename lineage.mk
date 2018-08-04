#
# Copyright (C) 2018 The LineageOS Project
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
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from albus device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := motorola
PRODUCT_DEVICE := albus
PRODUCT_MANUFACTURER := motorola
PRODUCT_NAME := lineage_albus
PRODUCT_MODEL := Motorola Z2 Play

PRODUCT_GMS_CLIENTID_BASE := android-motorola

TARGET_VENDOR := motorola
TARGET_VENDOR_PRODUCT_NAME := albus

PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="albus-user 8.0.0 OPSS27.76-12-25-3 4 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := motorola/albus/albus:8.0.0/OPSS27.76-12-25-3/4:user/release-keys
