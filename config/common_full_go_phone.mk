# Set LessAOSP specific identifier for Android Go enabled products
PRODUCT_TYPE := go

# Inherit full common LessAOSP stuff
$(call inherit-product, vendor/lessaosp/config/common_full_phone.mk)
