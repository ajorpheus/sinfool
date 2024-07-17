#import <UIKit/UIKit.h>

#include <substrate.h>

static id _patched_ftt_meth_$MPUChronologicalProgressView$initWithStyle$(id self, SEL _cmd, long long arg1) {
    // •
    return NULL;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_MPUChronologicalProgressView = objc_getClass("MPUChronologicalProgressView");
    MSHookMessageEx(_ftt_class_MPUChronologicalProgressView, @selector(initWithStyle:), (IMP)_patched_ftt_meth_$MPUChronologicalProgressView$initWithStyle$, NULL);
}
