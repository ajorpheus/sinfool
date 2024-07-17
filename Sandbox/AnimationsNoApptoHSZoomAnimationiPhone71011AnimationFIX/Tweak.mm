#import <UIKit/UIKit.h>

#include <substrate.h>

static unsigned long long _patched_ftt_meth_$SBUIAnimationZoomApp$zoomDirection(id self, SEL _cmd) {
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBUIAnimationZoomApp = objc_getClass("SBUIAnimationZoomApp");
    MSHookMessageEx(_ftt_class_SBUIAnimationZoomApp, @selector(zoomDirection), (IMP)_patched_ftt_meth_$SBUIAnimationZoomApp$zoomDirection, NULL);
}
