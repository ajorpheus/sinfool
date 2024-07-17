#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$SBControlCenterController$_shouldShowGrabberOnFirstSwipe(id self, SEL _cmd) {
    return 0;
}

static void (*_orig_ftt_meth_$CCUIControlCenterSettings$setUseNewBounce$)(id, SEL, bool);
static void _patched_ftt_meth_$CCUIControlCenterSettings$setUseNewBounce$(id self, SEL _cmd, bool arg1) {
    arg1 = 0;
    _orig_ftt_meth_$CCUIControlCenterSettings$setUseNewBounce$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBControlCenterController = objc_getClass("SBControlCenterController");
    MSHookMessageEx(_ftt_class_SBControlCenterController, @selector(_shouldShowGrabberOnFirstSwipe), (IMP)_patched_ftt_meth_$SBControlCenterController$_shouldShowGrabberOnFirstSwipe, NULL);
    Class _ftt_class_CCUIControlCenterSettings = objc_getClass("CCUIControlCenterSettings");
    MSHookMessageEx(_ftt_class_CCUIControlCenterSettings, @selector(setUseNewBounce:), (IMP)_patched_ftt_meth_$CCUIControlCenterSettings$setUseNewBounce$, (IMP *)_orig_ftt_meth_$CCUIControlCenterSettings$setUseNewBounce$);
}
