$(call inherit-product, $(SRC_TARGET_DIR)/product/window_extensions.mk)

# Inherit mobile full common LessAOSP stuff
$(call inherit-product, vendor/lessaosp/config/common_mobile_full.mk)

# GMS
WITH_GMS := true
$(call inherit-product, vendor/google/gms/config.mk)
$(call inherit-product, vendor/google/pixel/config.mk)

# Inherit tablet common LessAOSP stuff
$(call inherit-product, vendor/lessaosp/config/tablet.mk)

$(call inherit-product, vendor/lessaosp/config/wifionly.mk)
