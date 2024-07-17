#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$SBScreenEdgePanGestureRecognizer$isLocationWithinGrabberActiveZone(id self, SEL _cmd) {
    // NC/CC
    return 1;
}

static bool _patched_ftt_meth_$SBGrabberTongue$_recognizerIsWithinGrabberZone$(id self, SEL _cmd, id arg1) {
    // Side Switcher
    return 1;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBScreenEdgePanGestureRecognizer = objc_getClass("SBScreenEdgePanGestureRecognizer");
    MSHookMessageEx(_ftt_class_SBScreenEdgePanGestureRecognizer, @selector(isLocationWithinGrabberActiveZone), (IMP)_patched_ftt_meth_$SBScreenEdgePanGestureRecognizer$isLocationWithinGrabberActiveZone, NULL);
    Class _ftt_class_SBGrabberTongue = objc_getClass("SBGrabberTongue");
    MSHookMessageEx(_ftt_class_SBGrabberTongue, @selector(_recognizerIsWithinGrabberZone:), (IMP)_patched_ftt_meth_$SBGrabberTongue$_recognizerIsWithinGrabberZone$, NULL);
}
