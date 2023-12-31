# Inherit some common stuff.
$(call inherit-product, vendor/calyx/config/common_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/gs201/calyx_common.mk)
$(call inherit-product, device/google/felix/device-calyx.mk)
$(call inherit-product, device/google/felix/aosp_felix.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/window_extensions.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := calyx_felix
PRODUCT_MODEL := Pixel Fold
PRODUCT_BRAND := google

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=felix \
    PRIVATE_BUILD_DESC="felix-user 13 TQ3C.230901.001.A1 10750808 release-keys"

BUILD_FINGERPRINT := google/felix/felix:13/TQ3C.230901.001.A1/10750808:user/release-keys

PRODUCT_RESTRICT_VENDOR_FILES := false

$(call inherit-product, vendor/google/felix/felix-vendor.mk)
