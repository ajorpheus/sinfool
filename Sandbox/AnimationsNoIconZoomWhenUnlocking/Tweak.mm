#import <UIKit/UIKit.h>

#include <substrate.h>

static unsigned long long _patched_ftt_meth_$SBCenterAppIconZoomAnimator$_numberOfSignificantAnimations(id self, SEL _cmd) {
    return 0;
}

static unsigned long long _patched_ftt_meth_$SBCenterIconZoomAnimator$_numberOfSignificantAnimations(id self, SEL _cmd) {
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBCenterAppIconZoomAnimator = objc_getClass("SBCenterAppIconZoomAnimator");
    MSHookMessageEx(_ftt_class_SBCenterAppIconZoomAnimator, @selector(_numberOfSignificantAnimations), (IMP)_patched_ftt_meth_$SBCenterAppIconZoomAnimator$_numberOfSignificantAnimations, NULL);
    Class _ftt_class_SBCenterIconZoomAnimator = objc_getClass("SBCenterIconZoomAnimator");
    MSHookMessageEx(_ftt_class_SBCenterIconZoomAnimator, @selector(_numberOfSignificantAnimations), (IMP)_patched_ftt_meth_$SBCenterIconZoomAnimator$_numberOfSignificantAnimations, NULL);
}
