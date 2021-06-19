#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Overlays
PRODUCT_PACKAGES += \
    AOSPAApolloFrameworks \
    AOSPAApolloSettings \
    AOSPAApolloSystemUI \
    ApolloFrameworks \
    ApolloSystemUI

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# Audio configs
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/audio/,$(TARGET_COPY_OUT_VENDOR)/etc)

PRODUCT_SHIPPING_API_LEVEL := 29

# Refrash rate
PRODUCT_PROPERTY_OVERRIDES += \
    ro.surface_flinger.use_content_detection_for_refresh_rate=true \
    ro.surface_flinger.set_display_power_timer_ms=1000 \
    ro.surface_flinger.set_idle_timer_ms=80 \
    ro.surface_flinger.set_touch_timer_ms=200 \
    vendor.display.idle_time=1100

# Inherit from sm8250-common
$(call inherit-product, device/xiaomi/sm8250-common/kona.mk)

# Inherit from vendor blobs
$(call inherit-product, vendor/xiaomi/apollon/apollon-vendor.mk)
