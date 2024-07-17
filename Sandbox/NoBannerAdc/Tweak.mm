#import <UIKit/UIKit.h>

#include <substrate.h>

static id _patched_ftt_meth_$FlurryAdFrame$init(id self, SEL _cmd) {
    return NULL;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_FlurryAdFrame = objc_getClass("FlurryAdFrame");
    MSHookMessageEx(_ftt_class_FlurryAdFrame, @selector(init), (IMP)_patched_ftt_meth_$FlurryAdFrame$init, NULL);
}
