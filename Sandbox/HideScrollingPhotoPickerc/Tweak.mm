#import <UIKit/UIKit.h>

#include <substrate.h>

static id _patched_ftt_meth_$PUScrubberView$initWithFrame$(id self, SEL _cmd, CGRect arg1) {
    return NULL;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_PUScrubberView = objc_getClass("PUScrubberView");
    MSHookMessageEx(_ftt_class_PUScrubberView, @selector(initWithFrame:), (IMP)_patched_ftt_meth_$PUScrubberView$initWithFrame$, NULL);
}
