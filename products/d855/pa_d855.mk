# Copyright (C) 2016-2020 Paranoid Android
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

# Check for target product
ifeq (pa_d855,$(TARGET_PRODUCT))

TARGET_BOOT_ANIMATION_RES := 1440

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit device configuration
$(call inherit-product, device/lge/d855/device.mk)

# Inherit common PA configuration
$(call inherit-product, vendor/pa/config/common_full_phone.mk)

PRODUCT_DEVICE := d855
PRODUCT_NAME := pa_d855
PRODUCT_BRAND := lge
PRODUCT_MODEL := LG-D855
PRODUCT_MANUFACTURER := LGE

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE="g3" \
    PRODUCT_NAME="g3_global_com" \
    PRIVATE_BUILD_DESC="g3_global_com-user 6.0 MRA58K 15351124649f4 release-keys"

BUILD_FINGERPRINT="lge/g3_global_com/g3:6.0/MRA58K/15351124649f4:user/release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-lge

endif