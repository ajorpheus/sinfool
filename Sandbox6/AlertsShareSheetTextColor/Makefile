ARCHS = arm64 arm64e
TARGET = iphone:clang:14.5:14.5
DEBUG = 0

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = AlertsShareSheetTextColor
AlertsShareSheetTextColor_FILES = Tweak.mm
AlertsShareSheetTextColor_FRAMEWORKS = UIKit

include $(THEOS_MAKE_PATH)/tweak.mk
