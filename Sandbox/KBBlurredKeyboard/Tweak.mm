#import <UIKit/UIKit.h>

#include <substrate.h>

static long long _patched_ftt_meth_$UIKBRenderConfig$backdropStyle(id self, SEL _cmd) {
    // Backdrop Style:  Blur=0, Light Blur=-1, Transparent=-2, Dark Alt=1, Matrix Blur=-3
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_UIKBRenderConfig = objc_getClass("UIKBRenderConfig");
    MSHookMessageEx(_ftt_class_UIKBRenderConfig, @selector(backdropStyle), (IMP)_patched_ftt_meth_$UIKBRenderConfig$backdropStyle, NULL);
}
