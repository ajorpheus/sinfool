ARCHS = arm64 arm64e
TARGET = iphone:clang:14.5:14.5
DEBUG = 0

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = AlertsAIOCustomier
AlertsAIOCustomier_FILES = Tweak.mm
AlertsAIOCustomier_FRAMEWORKS = UIKit

include $(THEOS_MAKE_PATH)/tweak.mk
