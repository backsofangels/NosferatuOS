# =============================================================================
# Nosferatu OS - x86 Platform Common Configuration
# =============================================================================
# This file contains the hardware-specific packages and properties for the
# QEMU/Ranchu emulator platform.

# --- Platform Properties ---
# Include the platform-specific system.prop (DPI, GPU settings) [web:101]
TARGET_DEVICE_SYS_PROPS += $(call my-dir)/system.prop

# --- Emulator HAL Modules (Ranchu) ---
# Critical modules for hardware abstraction in the virtual environment
PRODUCT_PACKAGES += \
    sensors.goldfish \
    audio.primary.goldfish \
    lights.goldfish \
    power.goldfish \
    gralloc.goldfish

# --- Graphics Emulation Stack ---
# Bridges guest GLES calls to the host GPU for acceleration
PRODUCT_PACKAGES += \
    libEGL_emulation \
    libGLESv1_CM_emulation \
    libGLESv2_emulation \
    libOpenglSystemCommon \
    libOpenglCodecCommon \
    gralloc.goldfish \
    hwcomposer.default \
    memtrack.default \
    gralloc.ranchu

# --- QEMU Integration & Setup ---
# Essential services to handle emulator properties and network setup [file:80].
PRODUCT_PACKAGES += \
    qemu-props \
    goldfish-setup \
    goldfish-logcat

# --- Hardware Configuration Files ---
# Inherit standard emulator configuration files from the generic AOSP tree.
# These handle the mount points (fstab) and hardware initialization (init.rc).
PRODUCT_COPY_FILES += \
    device/generic/goldfish/fstab.ranchu:root/fstab.ranchu \
    device/generic/goldfish/init.ranchu.rc:root/init.ranchu.rc \
    device/generic/goldfish/ueventd.ranchu.rc:root/ueventd.ranchu.rc \
    device/generic/goldfish/init.ranchu.usb.rc:root/init.ranchu.usb.rc

# --- Kernel Logic ---
# Point to the generic ranchu kernel if not defined elsewhere.
PRODUCT_COPY_FILES += \
    prebuilts/qemu-kernel/x86_64/ranchu/kernel-qemu:kernel
