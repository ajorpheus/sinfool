#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$CABackdropLayer$isEnabled(id self, SEL _cmd) {
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_CABackdropLayer = objc_getClass("CABackdropLayer");
    MSHookMessageEx(_ftt_class_CABackdropLayer, @selector(isEnabled), (IMP)_patched_ftt_meth_$CABackdropLayer$isEnabled, NULL);
}
