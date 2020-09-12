# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from duo device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := microsoft
PRODUCT_DEVICE := duo
PRODUCT_MANUFACTURER := microsoft
PRODUCT_NAME := lineage_duo
PRODUCT_MODEL := Surface Duo

PRODUCT_GMS_CLIENTID_BASE := android-microsoft
TARGET_VENDOR := microsoft
TARGET_VENDOR_PRODUCT_NAME := duo
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="duo-user duo 2020.812.86 202008120086 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := surface/duo/duo:10/2020.812.86/202008120086:user/release-keys
