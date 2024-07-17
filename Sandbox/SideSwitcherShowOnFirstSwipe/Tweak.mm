#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$SBGrabberTongue$_requiresTongueOutsideGrabberFreeRegion(id self, SEL _cmd) {
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBGrabberTongue = objc_getClass("SBGrabberTongue");
    MSHookMessageEx(_ftt_class_SBGrabberTongue, @selector(_requiresTongueOutsideGrabberFreeRegion), (IMP)_patched_ftt_meth_$SBGrabberTongue$_requiresTongueOutsideGrabberFreeRegion, NULL);
}
