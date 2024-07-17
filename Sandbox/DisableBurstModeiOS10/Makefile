ARCHS = arm64 arm64e
TARGET = iphone:clang:14.5:14.5
DEBUG = 0

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = DisableBurstModeiOS10
DisableBurstModeiOS10_FILES = Tweak.mm

include $(THEOS_MAKE_PATH)/tweak.mk
