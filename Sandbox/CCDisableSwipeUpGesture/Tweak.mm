#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$SBControlCenterController$gestureRecognizerShouldBegin$(id self, SEL _cmd, id arg1) {
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBControlCenterController = objc_getClass("SBControlCenterController");
    MSHookMessageEx(_ftt_class_SBControlCenterController, @selector(gestureRecognizerShouldBegin:), (IMP)_patched_ftt_meth_$SBControlCenterController$gestureRecognizerShouldBegin$, NULL);
}
