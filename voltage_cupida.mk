#
# Copyright (C) 2021 Android Open Source Project
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
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile
$(call inherit-product, device/oplus/cupida/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/voltage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := voltage_cupida
PRODUCT_DEVICE := cupida
PRODUCT_BRAND := realme
PRODUCT_MODEL := Realme X7 Max 5G
PRODUCT_MANUFACTURER := realme

# Build info
BUILD_FINGERPRINT := "realme/RMX3031/RMX3031L1:13/TP1A.220905.001/R.ead5d5-5fba:user/release-keys"
PRODUCT_BUILD_PROP_OVERRIDES := BuildDesc=$(call normalize-path-list, "sys_mssi_64_cn_armv82-user-13-TP1A.220905.001-1677828988354-release-keys")
PRODUCT_PROPERTY_OVERRIDES := ro.build.fingerprint=$(BUILD_FINGERPRINT)
PRODUCT_GMS_CLIENTID_BASE := android-realme
EXTRA_UDFPS_ANIMATIONS := true
