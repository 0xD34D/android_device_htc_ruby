# Inherit some device configuration for ruby.
$(call inherit-product, device/htc/ruby/ruby.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cyanogen/products/common_full.mk)
$(call inherit-product, vendor/cyanogen/products/gsm.mk

#
# Setup device specific product configuration.
#
PRODUCT_NAME    := cm_ruby
PRODUCT_BRAND   := HTC
PRODUCT_DEVICE  := ruby
PRODUCT_MODEL   := Amaze 4g
PRODUCT_MANUFACTURER := HTC
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_ruby BUILD_FINGERPRINT=tmous/htc_ruby/ruby:2.3.4/GRJ22/192596.3:user/release-keys PRIVATE_BUILD_DESC="1.43.531.3 CL83920 release-keys"
-include vendor/cyanogen/products/common_versions.mk

PRODUCT_PACKAGES += \
    Camera \
    Stk

# Copy compatible bootanimation
PRODUCT_COPY_FILES +=  \
    vendor/cyanogen/prebuilt/hdpi/media/bootanimation.zip:system/media/bootanimation.zip

# Hot reboot
PRODUCT_PACKAGE_OVERLAYS += vendor/cyanogen/overlay/hot_reboot
