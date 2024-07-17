#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$SpringBoard$lockScreenCameraSupported(id self, SEL _cmd) {
    return 0;
}

static void (*_orig_ftt_meth_$SBDashBoardPageControl$setCameraPageEnabled$)(id, SEL, bool);
static void _patched_ftt_meth_$SBDashBoardPageControl$setCameraPageEnabled$(id self, SEL _cmd, bool arg1) {
    arg1 = 0;
    _orig_ftt_meth_$SBDashBoardPageControl$setCameraPageEnabled$(self, _cmd, arg1);
}

static bool _patched_ftt_meth_$SBDashBoardPageControl$isCameraPageEnabled(id self, SEL _cmd) {
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SpringBoard = objc_getClass("SpringBoard");
    MSHookMessageEx(_ftt_class_SpringBoard, @selector(lockScreenCameraSupported), (IMP)_patched_ftt_meth_$SpringBoard$lockScreenCameraSupported, NULL);
    Class _ftt_class_SBDashBoardPageControl = objc_getClass("SBDashBoardPageControl");
    MSHookMessageEx(_ftt_class_SBDashBoardPageControl, @selector(setCameraPageEnabled:), (IMP)_patched_ftt_meth_$SBDashBoardPageControl$setCameraPageEnabled$, (IMP *)_orig_ftt_meth_$SBDashBoardPageControl$setCameraPageEnabled$);
    MSHookMessageEx(_ftt_class_SBDashBoardPageControl, @selector(isCameraPageEnabled), (IMP)_patched_ftt_meth_$SBDashBoardPageControl$isCameraPageEnabled, NULL);
}
