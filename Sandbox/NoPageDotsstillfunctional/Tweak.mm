#import <UIKit/UIKit.h>

#include <substrate.h>

static id _patched_ftt_meth_$SBIconPageIndicatorImageSetResult$initWithIndicatorSet$enabledIndicatorSet$(id self, SEL _cmd, id arg1, id arg2) {
    return NULL;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBIconPageIndicatorImageSetResult = objc_getClass("SBIconPageIndicatorImageSetResult");
    MSHookMessageEx(_ftt_class_SBIconPageIndicatorImageSetResult, @selector(initWithIndicatorSet:enabledIndicatorSet:), (IMP)_patched_ftt_meth_$SBIconPageIndicatorImageSetResult$initWithIndicatorSet$enabledIndicatorSet$, NULL);
}
