#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$SBStatusBarStateAggregator$setShowsSyncActivityIndicator$)(id, SEL, bool);
static void _patched_ftt_meth_$SBStatusBarStateAggregator$setShowsSyncActivityIndicator$(id self, SEL _cmd, bool arg1) {
    arg1 = 0;
    _orig_ftt_meth_$SBStatusBarStateAggregator$setShowsSyncActivityIndicator$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBStatusBarStateAggregator = objc_getClass("SBStatusBarStateAggregator");
    MSHookMessageEx(_ftt_class_SBStatusBarStateAggregator, @selector(setShowsSyncActivityIndicator:), (IMP)_patched_ftt_meth_$SBStatusBarStateAggregator$setShowsSyncActivityIndicator$, (IMP *)_orig_ftt_meth_$SBStatusBarStateAggregator$setShowsSyncActivityIndicator$);
}