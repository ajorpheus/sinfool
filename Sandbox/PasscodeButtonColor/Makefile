ARCHS = arm64 arm64e
TARGET = iphone:clang:14.5:14.5
DEBUG = 0

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = PasscodeButtonColor
PasscodeButtonColor_FILES = Tweak.mm
PasscodeButtonColor_FRAMEWORKS = UIKit

include $(THEOS_MAKE_PATH)/tweak.mk
