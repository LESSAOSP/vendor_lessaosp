# Inherit mobile full common LessAOSP stuff
$(call inherit-product, vendor/lessaosp/config/common_mobile_full.mk)

# Enable support of one-handed mode
PRODUCT_PRODUCT_PROPERTIES += \
    ro.support_one_handed_mode?=true

# Inherit tablet common LessAOSP stuff
$(call inherit-product, vendor/lessaosp/config/tablet.mk)

$(call inherit-product, vendor/lessaosp/config/telephony.mk)
