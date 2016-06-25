# Release name
PRODUCT_RELEASE_NAME := h30u10

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/huawei/h30u10/device_h30u10.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := h30u10
PRODUCT_NAME := cm_h30u10
PRODUCT_BRAND := huawei
PRODUCT_MODEL := h30u10
PRODUCT_MANUFACTURER := huawei

##PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=6.0/MRA58M/2280749:user/release-keys PRIVATE_BUILD_DESC="mt6582-user 6.0 MRA58M 2280749 release-keys"
