#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$SBSlideUpAppGrabberView$_shouldUseVibrancy(id self, SEL _cmd) {
    // •
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBSlideUpAppGrabberView = objc_getClass("SBSlideUpAppGrabberView");
    MSHookMessageEx(_ftt_class_SBSlideUpAppGrabberView, @selector(_shouldUseVibrancy), (IMP)_patched_ftt_meth_$SBSlideUpAppGrabberView$_shouldUseVibrancy, NULL);
}
