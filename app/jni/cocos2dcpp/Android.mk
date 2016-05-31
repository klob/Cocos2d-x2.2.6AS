LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

$(call import-add-path, D:/cocos2d-x-2.2.6)\
$(call import-add-path, D:/cocos2d-x-2.2.6/cocos2dx/platform/third_party/android/prebuilt)\
$(call import-add-path, D:/cocos2d-x-2.2.6/extensions)\
$(call import-add-path, D:/cocos2d-x-2.2.6/external/Box2D)\
$(call import-add-path, D:/cocos2d-x-2.2.6/external/chipmunk)

LOCAL_MODULE := cocos2dcpp

LOCAL_SRC_FILES := hello.cpp \
    MyTest.cpp \
    main.cpp \
    $(LOCAL_PATH)/Classes/AppDelegate.cpp \
    $(LOCAL_PATH)/Classes/HelloWorldScene.cpp

LOCAL_C_INCLUDES := \
    $(LOCAL_PATH) \
    $(LOCAL_PATH)/Classes \
    $(LOCAL_PATH)/../../../../../../cocos2d-x-2.2.6/cocos2dx/include \
    $(LOCAL_PATH)/../../../../../cocos2d-x-2.2.6/cocos2dx/include \


CXX11_FLAGS := -std=c++11
LOCAL_CFLAGS += $(CXX11_FLAGS)
LOCAL_EXPORT_CPPFLAGS := $(CXX11_FLAGS)


LOCAL_LDLIBS := -lm -llog
LOCAL_WHOLE_STATIC_LIBRARIES += cocos2dx_static
LOCAL_WHOLE_STATIC_LIBRARIES += cocosdenshion_static
LOCAL_WHOLE_STATIC_LIBRARIES += box2d_static
LOCAL_WHOLE_STATIC_LIBRARIES += chipmunk_static
LOCAL_WHOLE_STATIC_LIBRARIES += cocos_extension_static



include $(BUILD_SHARED_LIBRARY)


$(call import-module,.)

