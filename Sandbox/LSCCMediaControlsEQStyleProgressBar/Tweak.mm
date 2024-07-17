#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$MPUChronologicalProgressView$setSubstyle$)(id, SEL, long long);
static void _patched_ftt_meth_$MPUChronologicalProgressView$setSubstyle$(id self, SEL _cmd, long long arg1) {
    arg1 = 1;
    _orig_ftt_meth_$MPUChronologicalProgressView$setSubstyle$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_MPUChronologicalProgressView = objc_getClass("MPUChronologicalProgressView");
    MSHookMessageEx(_ftt_class_MPUChronologicalProgressView, @selector(setSubstyle:), (IMP)_patched_ftt_meth_$MPUChronologicalProgressView$setSubstyle$, (IMP *)_orig_ftt_meth_$MPUChronologicalProgressView$setSubstyle$);
}
