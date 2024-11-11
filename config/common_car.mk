# Inherit common LessAOSP stuff
$(call inherit-product, vendor/lessaosp/config/common.mk)

# Inherit LessAOSP car device tree
$(call inherit-product, device/lessaosp/car/lessaosp_car.mk)

# Inherit the main AOSP car makefile that turns this into an Automotive build
$(call inherit-product, packages/services/Car/car_product/build/car.mk)
