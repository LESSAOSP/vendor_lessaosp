# Inherit common LessAOSP stuff
$(call inherit-product, vendor/lessaosp/config/common_mobile.mk)

PRODUCT_SIZE := full

# Accord
TARGET_INCLUDE_ACCORD ?= true
ifeq ($(TARGET_INCLUDE_ACCORD),true)
PRODUCT_PACKAGES += \
    Accord
endif

# Flash
ifneq ($(PRODUCT_NO_CAMERA),true)
PRODUCT_PACKAGES += \
    Flash
endif

# Extra cmdline tools
PRODUCT_PACKAGES += \
    unrar \
    zstd

# Overlays
include vendor/overlay/overlays.mk

# Fonts
include vendor/fontage/config.mk

# Include LessAOSP LatinIME dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/lessaosp/overlay/dictionaries
PRODUCT_ENFORCE_RRO_EXCLUDED_OVERLAYS += vendor/lessaosp/overlay/dictionaries
