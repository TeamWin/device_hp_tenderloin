#!/bin/sh

# Copyright (C) 2010 The Android Open Source Project
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

DEVICE=tenderloin

mkdir -p ../../../vendor/hp/$DEVICE/proprietary

(cat << EOF) | sed s/__DEVICE__/$DEVICE/g > ../../../vendor/hp/$DEVICE/$DEVICE-vendor-blobs.mk
# Copyright (C) 2010 The Android Open Source Project
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

# This file is generated by device/hp/__DEVICE__/extract-files.sh

# Prelink
PRODUCT_COPY_FILES += \\
    vendor/hp/__DEVICE__/proprietary/lib/libcamera.so:obj/lib/libcamera.so

# Shared Object Libraries
PRODUCT_COPY_FILES += \\
    vendor/hp/__DEVICE__/proprietary/lib/libcamera.so:system/lib/libcamera.so \\
    vendor/hp/__DEVICE__/proprietary/lib/libdiag.so:system/lib/libdiag.so \\
    vendor/hp/__DEVICE__/proprietary/lib/libgsl.so:system/lib/libgsl.so \\
    vendor/hp/__DEVICE__/proprietary/lib/libmmipl.so:system/lib/libmmipl.so \\
    vendor/hp/__DEVICE__/proprietary/lib/libmmjpeg.so:system/lib/libmmjpeg.so \\
    vendor/hp/__DEVICE__/proprietary/lib/libOpenVG.so:system/lib/libOpenVG.so \\
    vendor/hp/__DEVICE__/proprietary/lib/libqdp.so:system/lib/libqdp.so \\
    vendor/hp/__DEVICE__/proprietary/lib/libqmi.so:system/lib/libqmi.so \\
    vendor/hp/__DEVICE__/proprietary/lib/libqmiservices.so:system/lib/libqmiservices.so 

#EGL
PRODUCT_COPY_FILES += \\
    vendor/hp/__DEVICE__/proprietary/lib/egl/libEGL_adreno200.so:system/lib/egl/libEGL_adreno200.so \\
    vendor/hp/__DEVICE__/proprietary/lib/egl/libGLESv1_CM_adreno200.so:system/lib/egl/libGLESv1_CM_adreno200.so \\
    vendor/hp/__DEVICE__/proprietary/lib/egl/libGLESv2_adreno200.so:system/lib/egl/libGLESv2_adreno200.so \\
    vendor/hp/__DEVICE__/proprietary/lib/egl/libq3dtools_adreno200.so:system/lib/egl/libq3dtools_adreno200.so

#BIN
PRODUCT_COPY_FILES += \\
    vendor/hp/__DEVICE__/proprietary/bin/battery_charging:system/bin/battery_charging \\
    vendor/hp/__DEVICE__/proprietary/bin/dcvs:system/bin/dcvs \\
    vendor/hp/__DEVICE__/proprietary/bin/dcvsd:system/bin/dcvsd \\
    vendor/hp/__DEVICE__/proprietary/bin/mpdecision:system/bin/mpdecision \\
    vendor/hp/__DEVICE__/proprietary/bin/mpld:system/bin/mpld \\
    vendor/hp/__DEVICE__/proprietary/bin/sensord:system/bin/sensord \\
    vendor/hp/__DEVICE__/proprietary/bin/thermald:system/bin/thermald \\
    vendor/hp/__DEVICE__/proprietary/bin/usbhub:system/bin/usbhub \\
    vendor/hp/__DEVICE__/proprietary/bin/usbhub_init:system/bin/usbhub_init 

#Firmware
PRODUCT_COPY_FILES += \\
	vendor/hp/__DEVICE__/proprietary/etc/firmware/a6.txt:/system/etc/firmware/a6.txt \\
	vendor/hp/__DEVICE__/proprietary/etc/firmware/a6_1.txt:/system/etc/firmware/a6_1.txt \\
	vendor/hp/__DEVICE__/proprietary/etc/firmware/q6.b00:/system/etc/firmware/q6.b00 \\
	vendor/hp/__DEVICE__/proprietary/etc/firmware/q6.b01:/system/etc/firmware/q6.b01 \\
	vendor/hp/__DEVICE__/proprietary/etc/firmware/q6.b02:/system/etc/firmware/q6.b02 \\
	vendor/hp/__DEVICE__/proprietary/etc/firmware/q6.b03:/system/etc/firmware/q6.b03 \\
	vendor/hp/__DEVICE__/proprietary/etc/firmware/q6.b04:/system/etc/firmware/q6.b04 \\
	vendor/hp/__DEVICE__/proprietary/etc/firmware/q6.b05:/system/etc/firmware/q6.b05 \\
	vendor/hp/__DEVICE__/proprietary/etc/firmware/q6.mdt:/system/etc/firmware/q6.mdt \\
	vendor/hp/__DEVICE__/proprietary/etc/firmware/leia_pfp_470.fw:/system/etc/firmware/leia_pfp_470.fw \\
	vendor/hp/__DEVICE__/proprietary/etc/firmware/leia_pm4_470.fw:/system/etc/firmware/leia_pm4_470.fw \\
	vendor/hp/__DEVICE__/proprietary/etc/firmware/vidc_1080p.fw:/system/etc/firmware/vidc_1080p.fw \\
	vendor/hp/__DEVICE__/proprietary/etc/firmware/yamato_pfp.fw:/system/etc/firmware/yamato_pfp.fw \\
	vendor/hp/__DEVICE__/proprietary/etc/firmware/yamato_pm4.fw:/system/etc/firmware/yamato_pm4.fw \\
	vendor/hp/tenderloin/proprietary/etc/firmware/wm8958_enh_eq.wfw:/system/etc/firmware/wm8958_enh_eq.wfw \\
	vendor/hp/tenderloin/proprietary/etc/firmware/wm8958_mbc.wfw:/system/etc/firmware/wm8958_mbc.wfw \\
	vendor/hp/tenderloin/proprietary/etc/firmware/wm8958_mbc_vss.wfw:/system/etc/firmware/wm8958_mbc_vss.wfw
EOF

./setup-makefiles.sh
