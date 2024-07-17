#import <UIKit/UIKit.h>

#include <substrate.h>

static BOOL _patched_ftt_meth_$iRate$ratedThisVersion(id self, SEL _cmd) {
    return 1;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_iRate = objc_getClass("iRate");
    MSHookMessageEx(_ftt_class_iRate, @selector(ratedThisVersion), (IMP)_patched_ftt_meth_$iRate$ratedThisVersion, NULL);
}
