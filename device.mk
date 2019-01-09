# Copyright (C) 2013 The CyanogenMod Project
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

# Inherit from melius-common
$(call inherit-product, device/samsung/melius-common/melius-common.mk)
$(call inherit-product, device/samsung/melius-common/nfc.mk)

# Also get non-open-source specific aspects
$(call inherit-product, vendor/samsung/meliusltexx/meliusltexx-vendor.mk)

# Device overlay
DEVICE_PACKAGE_OVERLAYS += device/samsung/meliusltexx/overlay

# OTA
PRODUCT_PACKAGES += \
    Updates

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.gsm.xml

