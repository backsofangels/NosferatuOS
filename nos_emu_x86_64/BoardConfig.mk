# Inherit shared hardware logic from the platform level
include device/nosferatu/x86-common/BoardConfig.mk

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
