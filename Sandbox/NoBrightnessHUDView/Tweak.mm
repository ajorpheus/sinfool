#import <UIKit/UIKit.h>

#include <substrate.h>

static id _patched_ftt_meth_$SBBrightnessHUDView$init(id self, SEL _cmd) {
    return NULL;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBBrightnessHUDView = objc_getClass("SBBrightnessHUDView");
    MSHookMessageEx(_ftt_class_SBBrightnessHUDView, @selector(init), (IMP)_patched_ftt_meth_$SBBrightnessHUDView$init, NULL);
}
