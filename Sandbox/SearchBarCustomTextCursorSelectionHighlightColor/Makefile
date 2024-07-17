ARCHS = arm64 arm64e
TARGET = iphone:clang:14.5:14.5
DEBUG = 0

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = SearchBarCustomTextCursorSelectionHighlightColor
SearchBarCustomTextCursorSelectionHighlightColor_FILES = Tweak.mm
SearchBarCustomTextCursorSelectionHighlightColor_FRAMEWORKS = UIKit

include $(THEOS_MAKE_PATH)/tweak.mk
