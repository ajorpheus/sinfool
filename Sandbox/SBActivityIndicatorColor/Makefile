ARCHS = arm64 arm64e
TARGET = iphone:clang:14.5:14.5
DEBUG = 0

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = SBActivityIndicatorColor
SBActivityIndicatorColor_FILES = Tweak.mm
SBActivityIndicatorColor_FRAMEWORKS = UIKit

include $(THEOS_MAKE_PATH)/tweak.mk
