# =============================================================================
# NOSFERATU OS - GLOBAL BUILD & SECURITY CONFIGURATION
# =============================================================================
# This file is inherited by ALL Nosferatu devices
# It handles build optimizations, global security policies, and permission management.

include build/target/board/generic/BoardConfig.mk

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
WITH_DEXPREOPT_PIC := true

# Disable optimization for apps and prebuilts to reduce IO overhead and build time.
# Optimization is deferred to the first boot on the target device.
DONT_DEXPREOPT_PREBUILTS := true
WITH_DEXPREOPT_APP := false

# Limit dexpreopt to the core OS (Boot Image + System Server).
# This keeps the build manageable within a 10GB-16GB RAM envelope.
WITH_DEXPREOPT_BOOT_IMG_AND_SYSTEM_SERVER_ONLY := true
DEXPREOPT_BOOT_JARS_ONLY := false

# Tuning the dex2oat toolchain for WSL2 stability.
PRODUCT_DEXPREOPT_BOOT_FLAGS += --compile-pic
PRODUCT_DEXPREOPT_BOOT_FLAGS += --runtime-arg -Xms256m --runtime-arg -Xmx512m
