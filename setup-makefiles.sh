#!/bin/bash
#
# SPDX-FileCopyrightText: 2016 The CyanogenMod Project
# SPDX-FileCopyrightText: 2017-2024 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

set -e

DEVICE=felix
VENDOR=google

# Load extract_utils and do some sanity checks
MY_DIR="${BASH_SOURCE%/*}"
if [[ ! -d "${MY_DIR}" ]]; then MY_DIR="${PWD}"; fi

ANDROID_ROOT="${MY_DIR}/../../.."

HELPER="${ANDROID_ROOT}/tools/extract-utils/extract_utils.sh"
if [ ! -f "${HELPER}" ]; then
    echo "Unable to find helper script at ${HELPER}"
    exit 1
fi
source "${HELPER}"

# Initialize the helper
setup_vendor "${DEVICE}" "${VENDOR}" "${ANDROID_ROOT}"

# Warning headers and guards
write_headers

write_makefiles "${MY_DIR}/proprietary-files.txt" true
write_makefiles "${MY_DIR}/proprietary-files-carriersettings.txt" true
write_makefiles "${MY_DIR}/proprietary-files-vendor.txt" true

write_rro_package "CarrierConfigOverlay" "com.android.carrierconfig" product
write_single_product_copy_files "product/etc/apns-conf.xml"
write_single_product_packages "CarrierConfigOverlay"

append_firmware_calls_to_makefiles "${MY_DIR}/proprietary-firmware.txt"

bash "${ANDROID_ROOT}"/calyx/scripts/pixel/prepare-firmware-makefiles.sh "${DEVICE}" "${ANDROIDMK}" "${BOARDMK}"

# Finish
write_footers
