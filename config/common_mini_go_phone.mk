# Set LessAOSP specific identifier for Android Go enabled products
PRODUCT_TYPE := go

# Inherit mini common LessAOSP stuff
$(call inherit-product, vendor/lessaosp/config/common_mini_phone.mk)
