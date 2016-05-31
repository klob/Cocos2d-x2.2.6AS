#C++
APP_STL := gnustl_static

APP_CPPFLAGS := -frtti -DCC_ENABLE_CHIPMUNK_INTEGRATION=1 -std=c++11 -fsigned-char
APP_LDFLAGS := -latomic


ifeq ($(NDK_DEBUG),1)
  APP_CPPFLAGS += -DCOCOS2D_DEBUG=1
  APP_OPTIM := debug
else
  APP_CPPFLAGS += -DNDEBUG
  APP_OPTIM := release
endif

# This is the application makefile
APP_PROJECT_PATH := $(NDK_PROJECT_PATH)

# We expect the build script to be located here



# APP_OPTIM two options: debug, release
#APP_OPTIM := release

# APP_ABI four options: Android.mk, armeabi-v7a, mips, x86, all
APP_ABI := armeabi

# APP_PLATFORM: used to specify the include folder
APP_PLATFORM := android-21
APP_MK_DIR := $(dir $(lastword $(MAKEFILE_LIST)))


# APP_PROJECT_PATH: absolute path of project root path
# APP_PROJECT_PATH := $(call my-dir)/..
# APP_CFLAGS, used to insted of module in Android.mk \
# example: APP_CFLAGS += -I sources/bar
# APP_CPPFLAGS
# APP_STL three options :stlport_static, stlport_shared, system(default) for std::...
# APP_STL := stlport_static
