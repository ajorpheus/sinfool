ARCHS = arm64 arm64e
TARGET = iphone:clang:14.5:14.5
DEBUG = 0

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = iOS12ConceptUITheme
iOS12ConceptUITheme_FILES = Tweak.mm
iOS12ConceptUITheme_FRAMEWORKS = UIKit

include $(THEOS_MAKE_PATH)/tweak.mk
