#import <UIKit/UIKit.h>

#include <substrate.h>

static double _patched_ftt_meth_$UIStatusBarStyleAttributes$foregroundAlpha(id self, SEL _cmd) {
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_UIStatusBarStyleAttributes = objc_getClass("UIStatusBarStyleAttributes");
    MSHookMessageEx(_ftt_class_UIStatusBarStyleAttributes, @selector(foregroundAlpha), (IMP)_patched_ftt_meth_$UIStatusBarStyleAttributes$foregroundAlpha, NULL);
}
