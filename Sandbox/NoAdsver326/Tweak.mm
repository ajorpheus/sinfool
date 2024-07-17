#import <UIKit/UIKit.h>

#include <substrate.h>

static id _patched_ftt_meth_$FLAd$init(id self, SEL _cmd) {
    // •
    return NULL;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_FLAd = objc_getClass("FLAd");
    MSHookMessageEx(_ftt_class_FLAd, @selector(init), (IMP)_patched_ftt_meth_$FLAd$init, NULL);
}
