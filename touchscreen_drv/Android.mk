LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

#
## TP Application
#
#
#LOCAL_C_INCLUDES:= uim.h

LOCAL_MODULE:=ts_srv
LOCAL_MODULE_TAGS := eng
LOCAL_MODULE_CLASS := RECOVERY_EXECUTABLES
LOCAL_MODULE_PATH := $(TARGET_RECOVERY_ROOT_OUT)/sbin

LOCAL_SRC_FILES:= \
	ts_srv.c \
	digitizer.c
LOCAL_CFLAGS:= -g -c -W -Wall -O2 -mtune=cortex-a9 -mfpu=neon -mfloat-abi=softfp -funsafe-math-optimizations -D_POSIX_SOURCE -I/home/green/touchpad/hp_tenderloin_kernel/include

include $(BUILD_EXECUTABLE)

