#import <UIKit/UIKit.h>

#include <substrate.h>

static id _patched_ftt_meth_$SBUIControlCenterLabel$initWithFrame$(id self, SEL _cmd, CGRect arg1) {
    return NULL;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBUIControlCenterLabel = objc_getClass("SBUIControlCenterLabel");
    MSHookMessageEx(_ftt_class_SBUIControlCenterLabel, @selector(initWithFrame:), (IMP)_patched_ftt_meth_$SBUIControlCenterLabel$initWithFrame$, NULL);
}