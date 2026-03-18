#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-FileCopyrightText: The Calyx Institute
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common stuff
$(call inherit-product, vendor/calyx/config/common_foldable_book_telephony.mk)

# Inherit device configuration
DEVICE_CODENAME := felix
DEVICE_PATH := device/google/felix
VENDOR_PATH := vendor/google/felix
$(call inherit-product, $(DEVICE_PATH)/aosp_$(DEVICE_CODENAME).mk)

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel Fold
PRODUCT_NAME := calyx_$(DEVICE_CODENAME)

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="felix-user 16 BP4A.260205.001 14624666 release-keys" \
    BuildFingerprint=google/felix/felix:16/BP4A.260205.001/14624666:user/release-keys \
    DeviceProduct=$(DEVICE_CODENAME)

PRODUCT_RESTRICT_VENDOR_FILES := false

$(call inherit-product, $(VENDOR_PATH)/$(DEVICE_CODENAME)-vendor.mk)
