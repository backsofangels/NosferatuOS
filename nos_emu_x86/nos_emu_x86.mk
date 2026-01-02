# ========================================
# Nosferatu OS - Emulator x86_64 Product Definition
# ========================================

# ===== Inherit Emulator Template ===== #
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_x86.mk)

# ===== Inherit Nosferatu Customizations ===== #
$(call inherit-product, device/nosferatu/common/common.mk)

# ===== Product Identity ===== #
PRODUCT_NAME := nos_emu_x86
PRODUCT_DEVICE := nos_emu_x86
PRODUCT_MODEL := NosferatuOS-Emulator-x86
PRODUCT_BRAND := Nosferatu
PRODUCT_MANUFACTURER := NosferatuProject