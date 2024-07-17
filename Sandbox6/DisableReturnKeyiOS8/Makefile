ARCHS = arm64 arm64e
TARGET = iphone:clang:14.5:14.5
DEBUG = 0

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = DisableReturnKeyiOS8
DisableReturnKeyiOS8_FILES = Tweak.mm

include $(THEOS_MAKE_PATH)/tweak.mk
