#
# Copyright (C) 2018 The Android Open-Source Project
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

DEVICE_PATH := device/oppo/RMX1801

# Get non-open-source specific aspects
$(call inherit-product, vendor/oppo/RMX1801/RMX1801-vendor.mk)

# Overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay
ifneq ($(findstring lineage, $(TARGET_PRODUCT)),)
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay-lineage
endif

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/audio_policy_configuration.xml:system/etc/audio_policy_configuration.xml \
    $(LOCAL_PATH)/audio/audio_output_policy.conf:system/etc/audio_output_policy.conf

# Camera
PRODUCT_PACKAGES += \
    Snap

# Display
PRODUCT_PACKAGES += \
    libvulkan \
    vendor.display.config@1.0

# Fingerprint
PRODUCT_PACKAGES += \
    android.hardware.biometrics.fingerprint@2.1-service.oppo_RMX1801

# IMS
PRODUCT_PACKAGES += \
    ims-ext-common_system

PRODUCT_BOOT_JARS += \
    ims-ext-common_system

# Init
PRODUCT_PACKAGES += \
    init.target.rc

# Lights
PRODUCT_PACKAGES += \
    android.hardware.light@2.0-service.oppo_RMX1801

# Net
PRODUCT_PACKAGES += \
    netutils-wrapper-1.0

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.fingerprint.xml:system/etc/permissions/android.hardware.fingerprint.xml \
    frameworks/native/data/etc/android.software.secure_lock_screen.xml:system/etc/permissions/android.software.secure_lock_screen.xml \
    frameworks/native/data/etc/android.hardware.telephony.ims.xml:system/etc/permissions/android.hardware.telephony.ims.xml

# Power
PRODUCT_PACKAGES += \
    power.qcom:64

# QTI
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/qti_whitelist.xml:system/etc/sysconfig/qti_whitelist.xml \
    $(LOCAL_PATH)/permissions/privapp-permissions-qti.xml:system/etc/permissions/privapp-permissions-qti.xml

# System properties
-include $(LOCAL_PATH)/system_prop.mk

# Telephony
PRODUCT_PACKAGES += \
    telephony-ext

PRODUCT_BOOT_JARS += \
    telephony-ext

# WiFi Display
PRODUCT_BOOT_JARS += \
    WfdCommon
