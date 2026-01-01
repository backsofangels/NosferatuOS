# ========================================
# Nosferatu OS - Emulator x86_64 Product Definition
# ========================================

# ===== Inherit Emulator Template (SOLO questo) ===== #
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_x86_64.mk)

# ===== Inherit Nosferatu Customizations ===== #
$(call inherit-product, device/nosferatu/common/common.mk)

# ===== Product Identity ===== #
PRODUCT_NAME := nos_emu_x86_64
PRODUCT_DEVICE := nos_emu_x86_64
PRODUCT_MODEL := NosferatuOS-Emulator-x64
PRODUCT_BRAND := Nosferatu
PRODUCT_MANUFACTURER := NosferatuProject


# ===== CPU ABI Lists ===== #
PRODUCT_PROPERTY_OVERRIDES += \
    ro.product.cpu.abi=x86_64 \
    ro.product.cpu.abilist=x86_64,x86 \
    ro.product.cpu.abilist64=x86_64 \
    ro.product.cpu.abilist32=x86


# ===== Ranchu Emulator Files ===== #
PRODUCT_COPY_FILES += \
    prebuilts/qemu-kernel/x86_64/ranchu/kernel-qemu:kernel \
    device/generic/goldfish/fstab.ranchu:root/fstab.ranchu \
    device/generic/goldfish/init.ranchu.rc:root/init.ranchu.rc \
    device/generic/goldfish/ueventd.ranchu.rc:root/ueventd.ranchu.rc


# ===== Emulator Properties ===== #
PRODUCT_PROPERTY_OVERRIDES += \
    ro.kernel.qemu=1 \
    ro.kernel.qemu.gles=1 \
    qemu.hw.mainkeys=0
