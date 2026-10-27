#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device.
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Inherit some common VoltageOS stuff.
$(call inherit-product, vendor/voltage/config/common_full_phone.mk)

# Boot animation
TARGET_BOOT_ANIMATION_RES := 1080

PRODUCT_BRAND := Redmi
PRODUCT_DEVICE := veux
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := 2201116SG
PRODUCT_NAME := voltage_veux

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="veux_eea-user 13 TKQ1.221114.001 V816.0.13.0.TKCEUXM release-keys" \
    BuildFingerprint=Redmi/veux_eea/veux:13/TKQ1.221114.001/V816.0.13.0.TKCEUXM:user/release-keys \
    DeviceProduct=veux_eea


# ==== dukeoftoad: VoltageOS 5.12 continuation (A16 QPR2) ====

# Rebrand 5.11-EOL -> 5.12 (vendor version.mk froze the derived vars with := ;
# recomputing here so zip name + About screen carry 5.12)
VOLTAGEVERSION := 5.12
VOLTAGE_VERSION := $(VOLTAGEVERSION)-$(VOLTAGE_BUILD)-$(VOLTAGE_BUILD_DATE)-$(VOLTAGE_BUILD_TYPE)
VOLTAGE_MOD_VERSION := $(ANDROID_VERSION)-$(VOLTAGEVERSION)
VOLTAGE_DISPLAY_VERSION := VoltageOS-$(VOLTAGEVERSION)-$(VOLTAGE_BUILD_TYPE)
VOLTAGE_FINGERPRINT := VoltageOS/$(VOLTAGE_MOD_VERSION)/$(TARGET_PRODUCT_SHORT)/$(VOLTAGE_BUILD_DATE)

# Security patch level: October 2026 ASB
PLATFORM_SECURITY_PATCH := 2026-10-01
BOOT_SECURITY_PATCH := 2026-10-01
VENDOR_SECURITY_PATCH := 2026-10-01
