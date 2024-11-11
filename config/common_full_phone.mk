# Inherit mobile full common LessAOSP stuff
$(call inherit-product, vendor/lessaosp/config/common_mobile_full.mk)

# UDFPS Animation effects
PRODUCT_PACKAGES += \
    UdfpsAnimations

# Enable support of one-handed mode
PRODUCT_PRODUCT_PROPERTIES += \
    ro.support_one_handed_mode?=true

# Don't dexpreopt prebuilts. (For GMS).
DONT_DEXPREOPT_PREBUILTS := true

# GMS
WITH_GMS := true
$(call inherit-product, vendor/google/gms/config.mk)
$(call inherit-product, vendor/google/pixel/config.mk)

# Inherit from telephony config
$(call inherit-product, vendor/lessaosp/config/telephony.mk)
