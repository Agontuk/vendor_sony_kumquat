ifeq ($(TARGET_USES_ILLUMINAION_BAR), true)

LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := SemcIllumination
LOCAL_MODULE_OWNER := sony
LOCAL_SRC_FILES := proprietary/app/SemcIllumination/SemcIllumination.apk
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_MODULE_CLASS := APPS
LOCAL_CERTIFICATE := platform
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := com.sonyericsson.illumination
LOCAL_MODULE_OWNER := sony
LOCAL_SRC_FILES := proprietary/framework/com.sonyericsson.illumination.jar
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := $(COMMON_JAVA_PACKAGE_SUFFIX)
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_CERTIFICATE := PRESIGNED
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := com.sonyericsson.illumination
LOCAL_MODULE_OWNER := sony
LOCAL_SRC_FILES := proprietary/etc/permissions/com.sonyericsson.illumination.xml
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .xml
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/permissions
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := illumination_service
LOCAL_MODULE_OWNER := sony
LOCAL_SRC_FILES := proprietary/bin/illumination_service
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_MODULE_PATH := $(TARGET_OUT_EXECUTABLES)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libLightsJni
LOCAL_MODULE_OWNER := sony
LOCAL_SRC_FILES := proprietary/lib/libLightsJni.so
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := liblights-core
LOCAL_MODULE_OWNER := sony
LOCAL_SRC_FILES := proprietary/lib/liblights-core.so
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := lights.$(TARGET_BOARD_PLATFORM)
LOCAL_MODULE_OWNER := sony
LOCAL_SRC_FILES := proprietary/lib/hw/lights.st-ericsson.so
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)/hw
include $(BUILD_PREBUILT)

endif
