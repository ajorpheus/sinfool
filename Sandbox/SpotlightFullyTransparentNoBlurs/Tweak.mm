#import <UIKit/UIKit.h>

#include <substrate.h>

static id _patched_ftt_meth_$SBSearchBlurEffectView$init(id self, SEL _cmd) {
    return NULL;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBSearchBlurEffectView = objc_getClass("SBSearchBlurEffectView");
    MSHookMessageEx(_ftt_class_SBSearchBlurEffectView, @selector(init), (IMP)_patched_ftt_meth_$SBSearchBlurEffectView$init, NULL);
}
