# =============================================================================
# Nosferatu OS - Shared x86_64 Emulator Hardware Configuration
# =============================================================================

# Include standard AOSP x86_64
include build/target/board/generic_x86_64/BoardConfig.mk

# Inherit shared hardware logic from the platform level
include device/nosferatu/common/BoardConfig.mk

# Nosferatu Emulator x86_64 - Architecture Specifics
LOCAL_PATH := $(call my-dir)

# Architecture settings
TARGET_ARCH := x86_64
TARGET_ARCH_VARIANT := x86_64
TARGET_CPU_ABI := x86_64

# Multi-lib: Allow 32-bit binaries to run on the 64-bit OS
TARGET_2ND_ARCH := x86
TARGET_2ND_ARCH_VARIANT := x86
TARGET_2ND_CPU_ABI := x86

BOARD_SEPOLICY_DIRS := \
    system/sepolicy/private \
    system/sepolicy/public

# --- Partition Sizes (Standardized for Emulator) ---
# Unified to 2GB to avoid "out of space" errors during build
# TODO: eventually include custom partition sizes

# BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1073741824
# BOARD_USERDATAIMAGE_PARTITION_SIZE := 576716800
# BOARD_FLASH_BLOCK_SIZE := 512
TARGET_USERIMAGES_SPARSE_EXT_DISABLED := true
