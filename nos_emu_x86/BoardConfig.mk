# =============================================================================
# Nosferatu OS - x86 Emulator Hardware Configuration
# =============================================================================

# Include standard AOSP x86
include build/target/board/generic_x86/BoardConfig.mk

# Inherit shared hardware logic from the platform level
include device/nosferatu/common/BoardConfig.mk

# Nosferatu Emulator x86 - Architecture Specifics
LOCAL_PATH := $(call my-dir)

# Architecture settings
TARGET_CPU_VARIANT := generic
TARGET_ARCH := x86
TARGET_ARCH_VARIANT := x86
TARGET_CPU_ABI := x86

BOARD_SEPOLICY_DIRS := \
    system/sepolicy/private \
    system/sepolicy/public

TARGET_USERIMAGES_SPARSE_EXT_DISABLED := true
