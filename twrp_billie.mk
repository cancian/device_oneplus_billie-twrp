#
# Copyright 2017 The Android Open Source Project
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

# Release name
PRODUCT_RELEASE_NAME := billie

$(call inherit-product, $(SRC_TARGET_DIR)/product/core_minimal.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/twrp/config/common.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := $(PRODUCT_RELEASE_NAME)
PRODUCT_NAME := twrp_$(PRODUCT_DEVICE)
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := Nord N10 5G
PRODUCT_MANUFACTURER := OnePlus

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/oneplus/billie/device.mk)

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=OnePlusNordN10 \
    BUILD_PRODUCT=OnePlusNordN10 \
    TARGET_DEVICE=OnePlusNordN10

# HACK: Set vendor patch level
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.build.security_patch=2099-12-31
	
	
	
