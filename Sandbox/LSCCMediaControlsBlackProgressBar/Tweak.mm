#import <UIKit/UIKit.h>

#include <substrate.h>

static id (*_orig_ftt_meth_$MPUChronologicalProgressView$initWithStyle$)(id, SEL, long long);
static id _patched_ftt_meth_$MPUChronologicalProgressView$initWithStyle$(id self, SEL _cmd, long long arg1) {
    // Black Bar w/normal labels=0, Black Bar & Time Labels=1
    arg1 = 0;
    return _orig_ftt_meth_$MPUChronologicalProgressView$initWithStyle$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_MPUChronologicalProgressView = objc_getClass("MPUChronologicalProgressView");
    MSHookMessageEx(_ftt_class_MPUChronologicalProgressView, @selector(initWithStyle:), (IMP)_patched_ftt_meth_$MPUChronologicalProgressView$initWithStyle$, (IMP *)_orig_ftt_meth_$MPUChronologicalProgressView$initWithStyle$);
}
