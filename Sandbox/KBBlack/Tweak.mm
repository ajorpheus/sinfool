#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$UIKBRenderConfig$setLightKeyboard$)(id, SEL, bool);
static void _patched_ftt_meth_$UIKBRenderConfig$setLightKeyboard$(id self, SEL _cmd, bool arg1) {
    arg1 = 0;
    _orig_ftt_meth_$UIKBRenderConfig$setLightKeyboard$(self, _cmd, arg1);
}

static long long _patched_ftt_meth_$UIDevice$_keyboardGraphicsQuality(id self, SEL _cmd) {
    return 10;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_UIKBRenderConfig = objc_getClass("UIKBRenderConfig");
    MSHookMessageEx(_ftt_class_UIKBRenderConfig, @selector(setLightKeyboard:), (IMP)_patched_ftt_meth_$UIKBRenderConfig$setLightKeyboard$, (IMP *)_orig_ftt_meth_$UIKBRenderConfig$setLightKeyboard$);
    Class _ftt_class_UIDevice = objc_getClass("UIDevice");
    MSHookMessageEx(_ftt_class_UIDevice, @selector(_keyboardGraphicsQuality), (IMP)_patched_ftt_meth_$UIDevice$_keyboardGraphicsQuality, NULL);
}
