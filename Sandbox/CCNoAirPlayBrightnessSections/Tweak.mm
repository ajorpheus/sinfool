#import <UIKit/UIKit.h>

#include <substrate.h>

static id _patched_ftt_meth_$SBControlCenterContentView$brightnessSection(id self, SEL _cmd) {
    return NULL;
}

static id _patched_ftt_meth_$SBControlCenterContentView$airplaySection(id self, SEL _cmd) {
    return NULL;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBControlCenterContentView = objc_getClass("SBControlCenterContentView");
    MSHookMessageEx(_ftt_class_SBControlCenterContentView, @selector(brightnessSection), (IMP)_patched_ftt_meth_$SBControlCenterContentView$brightnessSection, NULL);
    MSHookMessageEx(_ftt_class_SBControlCenterContentView, @selector(airplaySection), (IMP)_patched_ftt_meth_$SBControlCenterContentView$airplaySection, NULL);
}
