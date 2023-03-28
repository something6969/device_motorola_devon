# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from devon device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := motorola
PRODUCT_DEVICE := devon
PRODUCT_MANUFACTURER := motorola
PRODUCT_NAME := lineage_devon
PRODUCT_MODEL := moto g32

PRODUCT_GMS_CLIENTID_BASE := android-motorola
TARGET_VENDOR := motorola
TARGET_VENDOR_PRODUCT_NAME := devon
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="devon_g-user 12 S2SN32M.34-72-12 b2c45 test-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := motorola/devon_g/devon:11/S2SN32.34-72-12/6a9200:user/release-keys
