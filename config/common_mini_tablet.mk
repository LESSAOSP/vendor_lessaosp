# Inherit mobile mini common LessAOSP stuff
$(call inherit-product, vendor/lessaosp/config/common_mobile_mini.mk)

# Inherit tablet common LessAOSP stuff
$(call inherit-product, vendor/lessaosp/config/tablet.mk)

$(call inherit-product, vendor/lessaosp/config/telephony.mk)
