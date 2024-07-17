#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$SBControlCenterContentContainerView$setContentHeight$)(id, SEL, double);
static void _patched_ftt_meth_$SBControlCenterContentContainerView$setContentHeight$(id self, SEL _cmd, double arg1) {
    // Control Center Height:  (approx Stock heights) iP5/5S=436, iP6+=429, iPad=184
    arg1 = 436;
    _orig_ftt_meth_$SBControlCenterContentContainerView$setContentHeight$(self, _cmd, arg1);
}

static bool _patched_ftt_meth_$SBControlCenterSettings$useNewBounce(id self, SEL _cmd) {
    // Use Bounce:  (T or F)
    return 0;
}

static bool _patched_ftt_meth_$SBUIControlCenterButton$isCircleButton(id self, SEL _cmd) {
    // Quick Launch Uses Circle Buttons:  (T or F)
    return 1;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBControlCenterContentContainerView = objc_getClass("SBControlCenterContentContainerView");
    MSHookMessageEx(_ftt_class_SBControlCenterContentContainerView, @selector(setContentHeight:), (IMP)_patched_ftt_meth_$SBControlCenterContentContainerView$setContentHeight$, (IMP *)_orig_ftt_meth_$SBControlCenterContentContainerView$setContentHeight$);
    Class _ftt_class_SBControlCenterSettings = objc_getClass("SBControlCenterSettings");
    MSHookMessageEx(_ftt_class_SBControlCenterSettings, @selector(useNewBounce), (IMP)_patched_ftt_meth_$SBControlCenterSettings$useNewBounce, NULL);
    Class _ftt_class_SBUIControlCenterButton = objc_getClass("SBUIControlCenterButton");
    MSHookMessageEx(_ftt_class_SBUIControlCenterButton, @selector(isCircleButton), (IMP)_patched_ftt_meth_$SBUIControlCenterButton$isCircleButton, NULL);
}
