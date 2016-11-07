#
# Copyright (C) 2016 The Android Open-Source Project
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

# This file includes all definitions that apply to ALL pme devices
#
# Everything in this directory will become public

PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := 640dpi
PRODUCT_AAPT_PREBUILT_DPI := xxxhdpi xxhdpi xhdpi hdpi

-include device/google/pme/device-common.mk

# Overlay
DEVICE_PACKAGE_OVERLAYS += device/google/pme/pme/overlay

# display
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=640

# Audio
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.vc_call_vol_steps=7

# HWUI cache sizes
PRODUCT_PROPERTY_OVERRIDES += \
    ro.hwui.texture_cache_size=72 \
    ro.hwui.layer_cache_size=48 \
    ro.hwui.path_cache_size=32

PRODUCT_COPY_FILES += \
    device/google/pme/init.common.rc:root/init.pme.rc \
    device/google/pme/init.common.usb.rc:root/init.pme.usb.rc \
    device/google/pme/fstab.common:root/fstab.pme \
    device/google/pme/ueventd.common.rc:root/ueventd.pme.rc \
    device/google/pme/init.recovery.common.rc:root/init.recovery.pme.rc

# Sensor hub init script
PRODUCT_COPY_FILES += \
    device/google/pme/init.common.nanohub.rc:root/init.pme.nanohub.rc

# Sensor packages
PRODUCT_PACKAGES += \
    sensors.pme \
    activity_recognition.pme

# NFC packages
PRODUCT_PACKAGES += \
    nfc_nci.pme

PRODUCT_COPY_FILES += \
    device/google/pme/nfc/libnfc-nxp.pme.conf:system/etc/libnfc-nxp.conf

# Led packages
PRODUCT_PACKAGES += \
    lights.pme

# Thermal packages
PRODUCT_PACKAGES += \
    thermal.pme

# VR packages
PRODUCT_PACKAGES += \
    vr.pme

