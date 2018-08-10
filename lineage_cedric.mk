#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017 The LineageOS Project
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

# Inherit from the common Open Source configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from cedric device
$(call inherit-product, device/motorola/cedric/device.mk)
$(call inherit-product, vendor/motorola/cedric/cedric-vendor.mk)

# Inherit from the common LineageOS configuration.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Boot animation
TARGET_SCREEN_WIDTH := 1080
TARGET_SCREEN_HEIGHT := 1920

PRODUCT_DEVICE := cedric
PRODUCT_NAME := lineage_cedric
PRODUCT_BRAND := motorola
PRODUCT_MANUFACTURER := motorola

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay

PRODUCT_ENFORCE_RRO_TARGETS := \
    framework-res

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="Moto G5"
