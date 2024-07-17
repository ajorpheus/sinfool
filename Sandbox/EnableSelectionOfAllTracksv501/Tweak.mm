#import <UIKit/UIKit.h>

#include <substrate.h>

static unsigned long long _patched_ftt_meth_$SXMPlaybackRestrictions$navigationType(id self, SEL _cmd) {
    return 1;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SXMPlaybackRestrictions = objc_getClass("SXMPlaybackRestrictions");
    MSHookMessageEx(_ftt_class_SXMPlaybackRestrictions, @selector(navigationType), (IMP)_patched_ftt_meth_$SXMPlaybackRestrictions$navigationType, NULL);
}
