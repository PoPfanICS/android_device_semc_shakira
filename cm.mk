## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Inherit some common OXP stuff.
$(call inherit-product, vendor/popfan/common_phone.mk)

# Inherit some common CM stuff.
# $(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/semc/shakira/device_shakira.mk)

# Setup device configuration
PRODUCT_RELEASE_NAME := E15i
PRODUCT_DEVICE := shakira
PRODUCT_NAME := cm_shakira
PRODUCT_BRAND := SEMC
PRODUCT_MODEL := X8
PRODUCT_MANUFACTURER := Sony Ericsson

# Release data
PRODUCT_VERSION_DEVICE_SPECIFIC := 11
TARGET_NO_LIVEWALLPAPERS := false
TARGET_BOOTANIMATION_NAME := x8

#Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=E15i BUILD_FINGERPRINT="SEMC/LT18i_1255-1753/LT18i:4.0.3/4.1.A.0.572/zf1_3w:user/release-keys" PRIVATE_BUILD_DESC="LT18i-user 4.0.3 4.1.A.0.562 zf1_3w test-keys" PRODUCT_DEFAULT_LANGUAGE="hu" PRODUCT_DEFAULT_REGION="HU"
