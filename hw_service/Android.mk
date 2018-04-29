#
#
#   Created by MR.WOLF
#
#

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := hw_service.cpp
LOCAL_SHARED_LIBRARIES := libcutils
LOCAL_MODULE := hw_service
LOCAL_MODULE_PATH := $(TARGET_RECOVERY_ROOT_OUT)/sbin
LOCAL_CFLAGS := -Werror
include $(BUILD_EXECUTABLE)
