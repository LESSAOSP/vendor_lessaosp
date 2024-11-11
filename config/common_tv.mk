# Inherit common LessAOSP stuff
$(call inherit-product, vendor/lessaosp/config/common.mk)

# Inherit LessAOSP atv device tree
$(call inherit-product, device/lessaosp/atv/lessaosp_atv.mk)

# AOSP packages
PRODUCT_PACKAGES += \
    LeanbackIME

PRODUCT_PACKAGE_OVERLAYS += vendor/lessaosp/overlay/tv
