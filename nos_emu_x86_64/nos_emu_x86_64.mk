# ========================================
# Nosferatu OS - Emulator x86_64 Product Definition
# ========================================

# ===== Inherit Emulator Template ===== #
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_x86_64.mk)

# ===== Inherit Nosferatu Customizations ===== #
$(call inherit-product, device/nosferatu/common/common.mk)

# ===== Product Identity ===== #
PRODUCT_NAME := nos_emu_x86_64
PRODUCT_DEVICE := nos_emu_x86_64
PRODUCT_MODEL := NosferatuOS-Emulator-x64
PRODUCT_BRAND := Nosferatu
PRODUCT_MANUFACTURER := NosferatuProject

# Bypass SELinux policy conflicts during development
BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive
SELINUX_IGNORE_NEVERALLOWS := true
BOARD_SEPOLICY_OVERRIDE := true
DONT_USE_SEPOLICY_CHECK := true
