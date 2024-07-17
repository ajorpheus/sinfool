#import <UIKit/UIKit.h>

#include <substrate.h>

static long long _patched_ftt_meth_$UIKBRenderConfig$backdropStyle(id self, SEL _cmd) {
    // Backdrop Style: (Transparent=-2, Light Blur=-1, Blur=0, Dark Alt=1)
    return 1;
}

static bool _patched_ftt_meth_$UIKBRenderConfig$lightKeyboard(id self, SEL _cmd) {
    // Light KB Config
    return 0;
}

static int _patched_ftt_meth_$UIKBTree$visualStyle(id self, SEL _cmd) {
    // Key - Visual Style: (Stock=P, Outlined Entry Keys=5)
    return 5;
}

static void (*_orig_ftt_meth_$UIKBRenderGeometry$setRoundRectRadius$)(id, SEL, double);
static void _patched_ftt_meth_$UIKBRenderGeometry$setRoundRectRadius$(id self, SEL _cmd, double arg1) {
    // Key - Round Radius: (Best Range=0.0-27.0) ...Lower # = More Squared
    arg1 = 16.1;
    _orig_ftt_meth_$UIKBRenderGeometry$setRoundRectRadius$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$UIKBRenderConfig$setKeycapOpacity$)(id, SEL, double);
static void _patched_ftt_meth_$UIKBRenderConfig$setKeycapOpacity$(id self, SEL _cmd, double arg1) {
    // Key - Outline Opacity: (0.0-1.0)
    arg1 = 0;
    _orig_ftt_meth_$UIKBRenderConfig$setKeycapOpacity$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$UIKBTextStyle$setTextOpacity$)(id, SEL, double);
static void _patched_ftt_meth_$UIKBTextStyle$setTextOpacity$(id self, SEL _cmd, double arg1) {
    // Key - Text Opacity: (0.0-1.0)
    arg1 = 0.7;
    _orig_ftt_meth_$UIKBTextStyle$setTextOpacity$(self, _cmd, arg1);
}

static bool _patched_ftt_meth_$UIKBRenderFactory$boldTextEnabled(id self, SEL _cmd) {
    // Key - Bold Text
    return 1;
}

static long long _patched_ftt_meth_$UIDevice$_keyboardGraphicsQuality(id self, SEL _cmd) {
    // Key - Pop Up: (Blurred BG=P, Black BG=10)
    return 10;
}

static bool _patched_ftt_meth_$UITextInputTraits$suppressReturnKeyStyling(id self, SEL _cmd) {
    // Return Key - Suppress Styling
    return 1;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_UIKBRenderConfig = objc_getClass("UIKBRenderConfig");
    MSHookMessageEx(_ftt_class_UIKBRenderConfig, @selector(backdropStyle), (IMP)_patched_ftt_meth_$UIKBRenderConfig$backdropStyle, NULL);
    MSHookMessageEx(_ftt_class_UIKBRenderConfig, @selector(lightKeyboard), (IMP)_patched_ftt_meth_$UIKBRenderConfig$lightKeyboard, NULL);
    Class _ftt_class_UIKBTree = objc_getClass("UIKBTree");
    MSHookMessageEx(_ftt_class_UIKBTree, @selector(visualStyle), (IMP)_patched_ftt_meth_$UIKBTree$visualStyle, NULL);
    Class _ftt_class_UIKBRenderGeometry = objc_getClass("UIKBRenderGeometry");
    MSHookMessageEx(_ftt_class_UIKBRenderGeometry, @selector(setRoundRectRadius:), (IMP)_patched_ftt_meth_$UIKBRenderGeometry$setRoundRectRadius$, (IMP *)_orig_ftt_meth_$UIKBRenderGeometry$setRoundRectRadius$);
    MSHookMessageEx(_ftt_class_UIKBRenderConfig, @selector(setKeycapOpacity:), (IMP)_patched_ftt_meth_$UIKBRenderConfig$setKeycapOpacity$, (IMP *)_orig_ftt_meth_$UIKBRenderConfig$setKeycapOpacity$);
    Class _ftt_class_UIKBTextStyle = objc_getClass("UIKBTextStyle");
    MSHookMessageEx(_ftt_class_UIKBTextStyle, @selector(setTextOpacity:), (IMP)_patched_ftt_meth_$UIKBTextStyle$setTextOpacity$, (IMP *)_orig_ftt_meth_$UIKBTextStyle$setTextOpacity$);
    Class _ftt_class_UIKBRenderFactory = objc_getClass("UIKBRenderFactory");
    MSHookMessageEx(_ftt_class_UIKBRenderFactory, @selector(boldTextEnabled), (IMP)_patched_ftt_meth_$UIKBRenderFactory$boldTextEnabled, NULL);
    Class _ftt_class_UIDevice = objc_getClass("UIDevice");
    MSHookMessageEx(_ftt_class_UIDevice, @selector(_keyboardGraphicsQuality), (IMP)_patched_ftt_meth_$UIDevice$_keyboardGraphicsQuality, NULL);
    Class _ftt_class_UITextInputTraits = objc_getClass("UITextInputTraits");
    MSHookMessageEx(_ftt_class_UITextInputTraits, @selector(suppressReturnKeyStyling), (IMP)_patched_ftt_meth_$UITextInputTraits$suppressReturnKeyStyling, NULL);
}
