# Inherit mobile full common LessAOSP stuff
$(call inherit-product, vendor/lessaosp/config/common_mobile_full.mk)

# GMS
WITH_GMS := true
$(call inherit-product, vendor/google/gms/config.mk)
$(call inherit-product, vendor/google/pixel/config.mk)

# Inherit tablet common LessAOSP stuff
$(call inherit-product, vendor/lessaosp/config/tablet.mk)

# Inherit from telephony config
$(call inherit-product, vendor/lessaosp/config/telephony.mk)
