#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sm6250-common
include device/xiaomi/sm6250-common/BoardConfigCommon.mk

DEVICE_PATH := device/xiaomi/miatoll

# Kernel
TARGET_KERNEL_CONFIG := vendor/xiaomi/miatoll_defconfig

#miuicamera
-include vendor/xiaomi/miuicamera/BoardConfigMiuiCamera.mk

# OTA assert
TARGET_OTA_ASSERT_DEVICE := curtana,excalibur,gram,joyeuse,miatoll

# Inherit proprietary blobs
include vendor/xiaomi/miatoll/BoardConfigVendor.mk

#Add framework_compatibility_matrix.xml
DEVICE_FRAMEWORK_COMPATIBILITY_MATRIX_FILE := $(LOCAL_PATH)/framework_compatibility_matrix.xml
