# Inherit common mobile LessAOSP stuff
$(call inherit-product, vendor/lessaosp/config/common.mk)

# Apps
PRODUCT_PACKAGES += \
    FossifyGallery \
    LatinIME

ifeq ($(PRODUCT_TYPE), go)
PRODUCT_PACKAGES += \
    LessAOSPLauncherQuickStepGo

PRODUCT_DEXPREOPT_SPEED_APPS += \
    LessAOSPLauncherQuickStepGo
else
PRODUCT_PACKAGES += \
    LessAOSPLauncherQuickStep

PRODUCT_DEXPREOPT_SPEED_APPS += \
    LessAOSPLauncherQuickStep
endif

PRODUCT_PACKAGES += \
    LessAOSPLauncherOverlay

# Customizations
PRODUCT_PACKAGES += \
    DisplayCutoutEmulationNarrowOverlay \
    DisplayCutoutEmulationWideOverlay \
    KeyboardNoNavigationBarOverlay \
    Launcher3NoHintOverlay \
    NoCutoutOverlay \
    NavigationBarMode2ButtonOverlay \
    NavigationBarNoHintOverlay

# Display
PRODUCT_SYSTEM_EXT_PROPERTIES += \
    debug.sf.frame_rate_multiple_threshold=60

# Media
PRODUCT_SYSTEM_PROPERTIES += \
    media.recorder.show_manufacturer_and_model=true

# SystemUI plugins
PRODUCT_PACKAGES += \
    QuickAccessWallet
