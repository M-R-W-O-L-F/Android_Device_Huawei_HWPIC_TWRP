#
#
#   Created by MR.WOLF
#
#

# Specify phone tech before including full_phone
$(call inherit-product, vendor/omni/config/gsm.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

PRODUCT_COPY_FILES += \
    bionic/libc/zoneinfo/tzdata:root/system/usr/share/zoneinfo/tzdata

PRODUCT_PACKAGES += \
    charger_res_images \
    charger

ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.secure=0 \
    ro.adb.secure=0 \
    security.perf_harden=0 \
    ro.allow.mock.location=1

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    sys.usb.configfs=1 \
    sys.usb.config=mtp,adb \
    persist.sys.usb.config=manufacture,adb \
    sys.usb.controller=hisi-usb-otg

PRODUCT_NAME := omni_HWPIC
PRODUCT_DEVICE := HWPIC
PRODUCT_BRAND := Huawei
PRODUCT_MODEL := Nova 2
PRODUCT_MANUFACTURER := HUAWEI
