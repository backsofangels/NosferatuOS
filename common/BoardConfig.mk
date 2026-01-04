# =============================================================================
# NOSFERATU OS - GLOBAL BUILD & SECURITY CONFIGURATION
# =============================================================================
# This file is inherited by ALL Nosferatu devices
# It handles build optimizations, global security policies, and permission management.

# -----------------------------------------------------------------------------
# GLOBAL SECURITY POLICIES
# -----------------------------------------------------------------------------

# Ensure ADB and core services are stable during the development phase.
BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive

# UID/GID permission management
TARGET_ANDROID_FILESYSTEM_CONFIG_H := device/nosferatu/common/android_filesystem_config.h

# -----------------------------------------------------------------------------
# DEXPREOPT OPTIMIZATIONS (WSL2 / Hyper-V Compatible)
# -----------------------------------------------------------------------------
# These settings mitigate WSL2 mmap constraints by enabling Position 
# Independent Code (PIC) and managing RAM pressure during build

# TODO: Check if all these flags are needed after the first working build

# Enable optimizations at first system boot
WITH_DEXPREOPT := true
WITH_DEXPREOPT_PIC := true

# Disable optimization for apps and prebuilts to reduce IO overhead and build time.
# Optimization is deferred to the first boot on the target device.
# Re-enabling optimizations
DONT_DEXPREOPT_PREBUILTS := false
WITH_DEXPREOPT_APP := true
WITH_DEXPREOPT_BOOT_IMG_AND_SYSTEM_SERVER_ONLY := false

# Tuning the dex2oat toolchain for WSL2 stability.
PRODUCT_DEXPREOPT_BOOT_FLAGS += --compile-pic
PRODUCT_DEXPREOPT_BOOT_FLAGS += --runtime-arg -Xms512m --runtime-arg -Xmx1024m
