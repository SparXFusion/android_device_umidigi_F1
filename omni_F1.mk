$(call inherit-product, build/target/product/embedded.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

PRODUCT_DEVICE := F1
PRODUCT_NAME := omni_F1
PRODUCT_BRAND := UMIDIGI
PRODUCT_MODEL := F1
PRODUCT_MANUFACTURER := A-gold

# ADB Fix
PRODUCT_PROPERTY_OVERRIDES += \
    sys.usb.ffs.aio_compat=true

# HACK: Set vendor patch level
#PRODUCT_PROPERTY_OVERRIDES += \
#    ro.build.version.security_patch=2019-05-05
PLATFORM_SECURITY_PATCH := 2019-05-05
