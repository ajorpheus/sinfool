#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$UIKBRenderFactory$boldTextEnabled(id self, SEL _cmd) {
    // Bold Text: (Yes=T, No=P)
    return 1;
}

static bool _patched_ftt_meth_$UITextInputTraits$suppressReturnKeyStyling(id self, SEL _cmd) {
    // Use Return Key Highlight Styling: (Yes=P, No=T)
    return 1;
}

static void (*_orig_ftt_meth_$UIKBRenderTraits$setBlendForm$)(id, SEL, long long);
static void _patched_ftt_meth_$UIKBRenderTraits$setBlendForm$(id self, SEL _cmd, long long arg1) {
    // Shift & Delete Key Highlight Style: (Dark=1, Light=0)
    arg1 = 1;
    _orig_ftt_meth_$UIKBRenderTraits$setBlendForm$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$UIKBTree$setVisualStyle$)(id, SEL, int);
static void _patched_ftt_meth_$UIKBTree$setVisualStyle$(id self, SEL _cmd, int arg1) {
    arg1 = 5;
    _orig_ftt_meth_$UIKBTree$setVisualStyle$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$UIKBTextStyle$setTextOpacity$)(id, SEL, double);
static void _patched_ftt_meth_$UIKBTextStyle$setTextOpacity$(id self, SEL _cmd, double arg1) {
    arg1 = 0.7;
    _orig_ftt_meth_$UIKBTextStyle$setTextOpacity$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$UIKBRenderConfig$setKeycapOpacity$)(id, SEL, double);
static void _patched_ftt_meth_$UIKBRenderConfig$setKeycapOpacity$(id self, SEL _cmd, double arg1) {
    arg1 = 0.5;
    _orig_ftt_meth_$UIKBRenderConfig$setKeycapOpacity$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$UIKBRenderConfig$setLightKeyboard$)(id, SEL, bool);
static void _patched_ftt_meth_$UIKBRenderConfig$setLightKeyboard$(id self, SEL _cmd, bool arg1) {
    arg1 = 0;
    _orig_ftt_meth_$UIKBRenderConfig$setLightKeyboard$(self, _cmd, arg1);
}

static long long _patched_ftt_meth_$UIDevice$_keyboardGraphicsQuality(id self, SEL _cmd) {
    return 10;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_UIKBRenderFactory = objc_getClass("UIKBRenderFactory");
    MSHookMessageEx(_ftt_class_UIKBRenderFactory, @selector(boldTextEnabled), (IMP)_patched_ftt_meth_$UIKBRenderFactory$boldTextEnabled, NULL);
    Class _ftt_class_UITextInputTraits = objc_getClass("UITextInputTraits");
    MSHookMessageEx(_ftt_class_UITextInputTraits, @selector(suppressReturnKeyStyling), (IMP)_patched_ftt_meth_$UITextInputTraits$suppressReturnKeyStyling, NULL);
    Class _ftt_class_UIKBRenderTraits = objc_getClass("UIKBRenderTraits");
    MSHookMessageEx(_ftt_class_UIKBRenderTraits, @selector(setBlendForm:), (IMP)_patched_ftt_meth_$UIKBRenderTraits$setBlendForm$, (IMP *)_orig_ftt_meth_$UIKBRenderTraits$setBlendForm$);
    Class _ftt_class_UIKBTree = objc_getClass("UIKBTree");
    MSHookMessageEx(_ftt_class_UIKBTree, @selector(setVisualStyle:), (IMP)_patched_ftt_meth_$UIKBTree$setVisualStyle$, (IMP *)_orig_ftt_meth_$UIKBTree$setVisualStyle$);
    Class _ftt_class_UIKBTextStyle = objc_getClass("UIKBTextStyle");
    MSHookMessageEx(_ftt_class_UIKBTextStyle, @selector(setTextOpacity:), (IMP)_patched_ftt_meth_$UIKBTextStyle$setTextOpacity$, (IMP *)_orig_ftt_meth_$UIKBTextStyle$setTextOpacity$);
    Class _ftt_class_UIKBRenderConfig = objc_getClass("UIKBRenderConfig");
    MSHookMessageEx(_ftt_class_UIKBRenderConfig, @selector(setKeycapOpacity:), (IMP)_patched_ftt_meth_$UIKBRenderConfig$setKeycapOpacity$, (IMP *)_orig_ftt_meth_$UIKBRenderConfig$setKeycapOpacity$);
    MSHookMessageEx(_ftt_class_UIKBRenderConfig, @selector(setLightKeyboard:), (IMP)_patched_ftt_meth_$UIKBRenderConfig$setLightKeyboard$, (IMP *)_orig_ftt_meth_$UIKBRenderConfig$setLightKeyboard$);
    Class _ftt_class_UIDevice = objc_getClass("UIDevice");
    MSHookMessageEx(_ftt_class_UIDevice, @selector(_keyboardGraphicsQuality), (IMP)_patched_ftt_meth_$UIDevice$_keyboardGraphicsQuality, NULL);
}
