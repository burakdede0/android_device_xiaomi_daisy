LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := RemovePackages
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_OVERRIDES_PACKAGES += \
    Chrome \
    Chrome-Stub \
	GoogleContacts \
    Photos \
    FilesPrebuilt \
    GoogleCamera \
    GoogleTTS \
    talkback \
    WellbeingPrebuilt \
    CalculatorGooglePrebuilt \
	DreamlinerPrebuilt \
    DreamlinerUpdater \
	PixelWallpapers2022 \
    CalendarGooglePrebuilt \
	GoogleDialer

LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_SRC_FILES := /dev/null
include $(BUILD_PREBUILT)