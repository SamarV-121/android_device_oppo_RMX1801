# Bluetooth
PRODUCT_PACKAGES += \
    audio.a2dp.default

# Net
PRODUCT_PACKAGES += \
    netutils-wrapper-1.0

# Call proprietary blob setup
$(call inherit-product-if-exists, vendor/oppo/RMX1801/RMX1801-vendor.mk)
