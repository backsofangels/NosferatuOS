LOCAL_PATH := $(call my-dir)

# Helper module to provide /system/bin/adbd as a symlink to /sbin/adbd
# This ensures ADB is available on Nougat system images
include $(CLEAR_VARS)
LOCAL_MODULE := adbd_system
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_MODULE_PATH := $(TARGET_OUT_EXECUTABLES)
LOCAL_POST_INSTALL_CMD := $(hide) ln -sf /sbin/adbd $(TARGET_OUT_EXECUTABLES)/adbd
include $(BUILD_PHONY_PACKAGE)
