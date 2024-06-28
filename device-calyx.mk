DEVICE_PACKAGE_OVERLAYS += device/google/felix/overlay-calyx

# ANGLE - Almost Native Graphics Layer Engine
PRODUCT_PACKAGES += \
    ANGLE

# EUICC
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.euicc.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/android.hardware.telephony.euicc.xml \
    device/google/felix/permissions/permissions_com.google.android.euicc.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/permissions_com.google.android.euicc.xml

PRODUCT_PACKAGES += \
    EuiccSupportPixelOverlay

# For Google Camera
PRODUCT_COPY_FILES += \
    device/google/felix/the_experiences.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/the_experiences.xml

# Freeform window management
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.freeform_window_management.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/android.software.freeform_window_management.xml

# HBM
PRODUCT_COPY_FILES += \
    device/google/felix/permissions/permissions_com.android.hbmsvmanager.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/permissions_com.android.hbmsvmanager.xml

PRODUCT_PACKAGES += \
    HbmSVManagerOverlayFelix

# Pixel Camera Services / Camera extensions
PRODUCT_COPY_FILES += \
    device/google/felix/permissions/permissions_com.google.android.apps.camera.services.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/permissions_com.google.android.apps.camera.services.xml

TARGET_PREBUILT_KERNEL := device/google/felix-kernel/Image.lz4

# wireless_charger HAL service
include device/google/gs-common/wireless_charger/wireless_charger.mk

# Build necessary packages for vendor

# Audio
PRODUCT_PACKAGES += \
    libaudioroutev2.vendor \
    libtinycompress

# Bluetooth
PRODUCT_PACKAGES += \
    android.hardware.bluetooth-V1-ndk.vendor:64 \
    hardware.google.bluetooth.bt_channel_avoidance@1.0.vendor:64

# Camera
PRODUCT_PACKAGES += \
    libGralloc4Wrapper \
    pixel-power-ext-V1-ndk.vendor:32

# Codec2
PRODUCT_PACKAGES += \
    android.hardware.media.c2@1.0.vendor \
    android.hardware.media.c2@1.2.vendor:64 \
    libacryl \
    libacryl_hdr_plugin \
    libavservices_minijail.vendor:64 \
    libcodec2_hidl@1.0.vendor \
    libcodec2_hidl@1.2.vendor:64 \
    libcodec2_soft_common.vendor:64 \
    libcodec2_vndk.vendor \
    libexynosutils \
    libexynosv4l2 \
    libmedia_ecoservice.vendor \
    libmedia_omx.vendor \
    libsfplugin_ccodec_utils.vendor \
    libstagefright_bufferpool@2.0.1.vendor \
    libstagefright_omx.vendor:64 \
    libstagefright_omx_utils.vendor \
    libstagefright_xmlparser.vendor \
    libvendorgraphicbuffer

# Confirmation UI
PRODUCT_PACKAGES += \
    android.hardware.confirmationui-V1-ndk.vendor:64 \
    android.hardware.confirmationui-lib.trusty:64 \
    android.hardware.confirmationui@1.0.vendor:64 \
    libteeui_hal_support.vendor:64

# Contexthub
PRODUCT_PACKAGES += \
    android.hardware.contexthub-V3-ndk.vendor:64 \
    chre_atoms_log:64 \
    chre_metrics_reporter:64 \
    chremetrics-cpp:64

# GPS
PRODUCT_PACKAGES += \
    liblzma.vendor:64 \
    libunwindstack.vendor:64

# Graphics
PRODUCT_PACKAGES += \
    libEGL_angle \
    libGLESv1_CM_angle \
    libGLESv2_angle

# HIDL
PRODUCT_PACKAGES += \
    libhidltransport.vendor \
    libhwbinder.vendor

# Identity credential
PRODUCT_PACKAGES += \
    android.hardware.identity-V5-ndk.vendor:64 \
    android.hardware.identity-support-lib.vendor:64 \
    android.hardware.identity_credential.xml

# Json
PRODUCT_PACKAGES += \
    libjson:64 \
    libjsoncpp.vendor:32

# Nos
PRODUCT_PACKAGES += \
    libkeymaster4support.vendor:64 \
    libkeymint_support.vendor:64 \
    libnos:64 \
    libnosprotos:64 \
    libnos_client_citadel:64 \
    libnos_datagram:64 \
    libnos_datagram_citadel:64 \
    libnos_feature:64 \
    libnos_transport:64 \
    nos_app_avb:64 \
    nos_app_identity:64 \
    nos_app_keymaster:64 \
    nos_app_keymaster_ctdl:64 \
    nos_app_weaver:64 \
    pixelpowerstats_provider_aidl_interface-cpp.vendor:64

# Radio
PRODUCT_PACKAGES += \
    libnetutils.vendor \
    libsqlite.vendor \
    libziparchive.vendor \
    modem_android_property_manager.vendor:32 \
    modem_android_property_manager_impl.vendor:32 \
    modem_clock_manager.vendor \
    modem_clock_manager_impl.vendor \
    modem_log_constants.vendor:32

# Sensors
PRODUCT_PACKAGES += \
    android.hardware.sensors@1.0.vendor \
    android.hardware.sensors@2.0-ScopedWakelock.vendor \
    android.hardware.sensors@2.0.vendor \
    android.hardware.sensors@2.1.vendor \
    libsensorndkbridge \
    sensors.dynamic_sensor_hal

# Trusty
PRODUCT_PACKAGES += \
    android.trusty.stats.nw.setter-cpp.vendor:64 \
    libbinder_trusty:64 \
    libtrusty_metrics:64

# Misc interfaces
PRODUCT_PACKAGES += \
    android.frameworks.stats-V1-cpp.vendor:64 \
    android.frameworks.stats-V1-ndk.vendor:32 \
    android.hardware.authsecret-V1-ndk.vendor:64 \
    android.hardware.biometrics.common-V3-ndk.vendor:64 \
    android.hardware.biometrics.fingerprint-V3-ndk.vendor:64 \
    android.hardware.gnss-V3-ndk.vendor:64 \
    android.hardware.health-V1-ndk.vendor \
    android.hardware.input.common-V1-ndk.vendor:64 \
    android.hardware.input.processor-V1-ndk.vendor:64 \
    android.hardware.keymaster-V4-ndk.vendor:64 \
    android.hardware.keymaster@3.0.vendor:64 \
    android.hardware.keymaster@4.0.vendor:64 \
    android.hardware.keymaster@4.1.vendor:64 \
    android.hardware.neuralnetworks-V4-ndk.vendor:64 \
    android.hardware.neuralnetworks@1.0.vendor:64 \
    android.hardware.neuralnetworks@1.1.vendor:64 \
    android.hardware.neuralnetworks@1.2.vendor:64 \
    android.hardware.neuralnetworks@1.3.vendor:64 \
    android.hardware.oemlock-V1-ndk.vendor:64 \
    android.hardware.radio-V1-ndk.vendor \
    android.hardware.radio.config-V1-ndk.vendor \
    android.hardware.radio.config@1.0.vendor \
    android.hardware.radio.config@1.1.vendor \
    android.hardware.radio.config@1.2.vendor \
    android.hardware.radio.data-V1-ndk.vendor \
    android.hardware.radio.deprecated@1.0.vendor \
    android.hardware.radio.messaging-V1-ndk.vendor \
    android.hardware.radio.modem-V1-ndk.vendor \
    android.hardware.radio.network-V1-ndk.vendor \
    android.hardware.radio.sim-V1-ndk.vendor \
    android.hardware.radio.voice-V1-ndk.vendor \
    android.hardware.radio@1.2.vendor \
    android.hardware.radio@1.3.vendor \
    android.hardware.radio@1.4.vendor \
    android.hardware.radio@1.5.vendor \
    android.hardware.radio@1.6.vendor \
    android.hardware.thermal-V1-ndk.vendor:32 \
    android.hardware.thermal@1.0.vendor:32 \
    android.hardware.thermal@2.0.vendor:32 \
    android.hardware.weaver-V2-ndk.vendor:64 \
    android.hardware.wifi-V1-ndk.vendor:64 \
    com.google.hardware.pixel.display-V9-ndk.vendor

# Misc
PRODUCT_PACKAGES += \
    libbinder.vendor:32 \
    libevent.vendor \
    libprocessgroup.vendor:32

# Properties
TARGET_VENDOR_PROP := $(LOCAL_PATH)/vendor.prop
