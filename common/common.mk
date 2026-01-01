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

# --- Core System Binaries ---
# Standard UNIX and Android tools required for stable system operation
# Includes the adbd_system symlink module for professional ADB management
PRODUCT_PACKAGES += \
    adbd \
    adbd_system \
    sh \
    mksh \
    toolbox \
    toybox \
    logd \
    logcat \
    servicemanager \
    vold \
    netd \
    e2fsck

# --- Nosferatu OS Minimal App Suite ---
# Default applications included in every build of the OS
PRODUCT_PACKAGES += \
    ExactCalculator \
    Calendar \
    Email \
    Gallery2 \
    Music \
    QuickSearchBox

# --- Filesystem Configuration ---
# Use the custom filesystem config for professional permission management
TARGET_ANDROID_FILESYSTEM_CONFIG_H := device/nosferatu/common/android_filesystem_config.h
TARGET_DEVICE_SYS_PROPS += device/nosferatu/common/system.prop.
