# =============================================================================
# Nosferatu OS - Shared x86/x86_64 Emulator Hardware Configuration
# =============================================================================

# Main include of ALL common configurations
include device/nosferatu/common/BoardConfig.mk

# --- Kernel / Bootloader Parameters ---
# console=ttyS0: Enables serial console for early boot logging
BOARD_KERNEL_CMDLINE += console=ttyS0 androidboot.hardware=ranchu

# --- Graphics & Display Stack ---
# Uses the Ranchu/Goldfish accelerated graphics engine
USE_OPENGL_RENDERER := true
TARGET_USES_HWC2 := true
BOARD_EGL_CFG := device/generic/goldfish-opengl/system/egl/egl.cfg

# --- Partition Sizes (Standardized for Emulator) ---
# Unified to 2GB to avoid "out of space" errors during build
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1073741824
BOARD_USERDATAIMAGE_PARTITION_SIZE := 576716800
BOARD_CACHEIMAGE_PARTITION_SIZE := 69206016
BOARD_SYSTEMIMAGE_PARTITION_RESERVED_SIZE := 104857600
BOARD_FLASH_BLOCK_SIZE := 512
BUILD_EMULATOR_OPENGL := true
BUILD_EMULATOR_OPENGL_DRIVER := true

# --- Filesystem Features ---
# BOARD_VOLD_EMULATE_FLS := true

# Disable sparse image creation
TARGET_USERIMAGES_SPARSE_EXT_DISABLED := true
