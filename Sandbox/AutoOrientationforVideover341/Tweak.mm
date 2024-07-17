#import <UIKit/UIKit.h>

#include <substrate.h>

static long long _patched_ftt_meth_$FCOrientationLocker$preferredOrientation(id self, SEL _cmd) {
    // Set Preferred Orientation:  (Portrait=1, Upside Down=2, Landscape Left=3, Landscape Right=4)
    return 3;
}

static bool _patched_ftt_meth_$FCOrientationLocker$orientationLocked(id self, SEL _cmd) {
    // •
    return 1;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_FCOrientationLocker = objc_getClass("FCOrientationLocker");
    MSHookMessageEx(_ftt_class_FCOrientationLocker, @selector(preferredOrientation), (IMP)_patched_ftt_meth_$FCOrientationLocker$preferredOrientation, NULL);
    MSHookMessageEx(_ftt_class_FCOrientationLocker, @selector(orientationLocked), (IMP)_patched_ftt_meth_$FCOrientationLocker$orientationLocked, NULL);
}
