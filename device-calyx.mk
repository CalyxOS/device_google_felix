DEVICE_PACKAGE_OVERLAYS += device/google/felix/overlay-calyx

# EUICC
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.euicc.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/android.hardware.telephony.euicc.xml \
    device/google/felix/permissions/permissions_com.google.android.euicc.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/permissions_com.google.android.euicc.xml

# For Google Camera
PRODUCT_COPY_FILES += \
    device/google/felix/the_experiences.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/the_experiences.xml

TARGET_PREBUILT_KERNEL := device/google/felix-kernel/Image.lz4
