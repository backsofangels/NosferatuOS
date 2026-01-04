# =============================================================================
# Nosferatu OS - Global Software Definition
# =============================================================================
# This file contains the software stack and properties shared by all 
# Nosferatu OS devices. Hardware-specific HALs belong in platform common folders

# --- OS Identity ---
# Branding displayed in "About Phone" and system properties
PRODUCT_BRAND           := Nosferatu
PRODUCT_MANUFACTURER    := NosferatuProject
PRODUCT_MODEL           := NosferatuOS-v1.0

# --- Performance & Low-RAM Tuning ---
# Global optimizations for devices with 1GB RAM or less
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.low_ram=true \
    ro.config.max_starting_bg=2 \
    debug.sf.nobootanimation=1 \
    ro.config.hw_quickboot=true \
    persist.sys.force_highendgfx=false

# Custom system props
TARGET_DEVICE_SYS_PROPS += device/nosferatu/common/system.prop

# ===== App customizations include + exclude + overrides ===== #
PRODUCT_PACKAGES += \
    KOReader \
    NosferatuLauncher 

PRODUCT_COPY_FILES += \
    vendor/nosferatu/configs/preferred-apps.xml:system/etc/preferred-apps.xml