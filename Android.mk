
ifeq ($(strip $(BOARD_USES_NMEA_GPS)),true)

  LOCAL_PATH := $(call my-dir)

  include $(CLEAR_VARS)

  LOCAL_SRC_FILES := \
    gps_nmea.c

  LOCAL_MODULE := libgps-nmea

  LOCAL_SHARED_LIBRARIES := \
    libutils \
    libcutils \
    libdl \
    libc
  LOCAL_PRELINK_MODULE := false
  LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)
  include $(BUILD_SHARED_LIBRARY)



endif
