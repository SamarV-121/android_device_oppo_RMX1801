# Alipay & WeChat fingerprint payment
PRODUCT_PACKAGES += \
    ifaamanager \
    soter

PRODUCT_BOOT_JARS += \
    ifaamanager \
    soter

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/ifaamanager/etc/org.ifaa.android.manager.permissions.xml:system/etc/permissions/org.ifaa.android.manager.permissions.xml

# Bluetooth
PRODUCT_PACKAGES += \
    audio.a2dp.default

# Camera
PRODUCT_PACKAGES += \
    Snap

# Device init scripts
PRODUCT_PACKAGES += \
    init.target.rc

# HIDL
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/manifest.xml:system/etc/manifest.xml

PRODUCT_PACKAGES += \
    android.hidl.base@1.0 \
    android.hidl.manager@1.0

# IMS
PRODUCT_PACKAGES += \
    ims-ext-common

# Input
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl

# Net
PRODUCT_PACKAGES += \
    netutils-wrapper-1.0

# Overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

ifneq ($(findstring lineage, $(TARGET_PRODUCT)),)
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay-lineage
endif

# Telephony
PRODUCT_PACKAGES += \
    telephony-ext

PRODUCT_BOOT_JARS += \
    telephony-ext

# Call proprietary blob setup
$(call inherit-product-if-exists, vendor/oppo/RMX1801/RMX1801-vendor.mk)
