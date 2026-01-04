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

# Bypass SELinux policy conflicts during development
BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive
SELINUX_IGNORE_NEVERALLOWS := true
BOARD_SEPOLICY_OVERRIDE := true
DONT_USE_SEPOLICY_CHECK := true

PRODUCT_COPY_FILES += \
    device/nosferatu/nos_emu_x86/configs/default_permissions.xml:system/etc/default-permissions/nosferatu-permissions.xml

PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.heapstartsize=8m \
    dalvik.vm.heapgrowthlimit=192m \
    dalvik.vm.heapsize=512m \
    dalvik.vm.heaptargetutilization=0.75 \
    dalvik.vm.heapminfree=512k \
    dalvik.vm.heapmaxfree=8m \
    dalvik.vm.isa.x86.variant=atom \
    dalvik.vm.isa.x86.features=default \
    ro.sf.lcd_density=160