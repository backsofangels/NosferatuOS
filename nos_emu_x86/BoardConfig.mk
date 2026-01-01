# Inherit shared hardware logic from the platform level
include device/nosferatu/x86-common/BoardConfig.mk

# Nosferatu Emulator x86 - Architecture Specifics
LOCAL_PATH :=  $(call my-dir)

# Architecture settings
TARGET_ARCH := x86
TARGET_ARCH_VARIANT := x86
TARGET_CPU_ABI := x86