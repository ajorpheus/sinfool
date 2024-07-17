#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$SBUIAnimationZoomDownApp$_setHidden$)(id, SEL, bool);
static void _patched_ftt_meth_$SBUIAnimationZoomDownApp$_setHidden$(id self, SEL _cmd, bool arg1) {
    arg1 = 1;
    _orig_ftt_meth_$SBUIAnimationZoomDownApp$_setHidden$(self, _cmd, arg1);
}

static long long _patched_ftt_meth_$SBApplication$wallpaperStyle(id self, SEL _cmd) {
    return 1;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBUIAnimationZoomDownApp = objc_getClass("SBUIAnimationZoomDownApp");
    MSHookMessageEx(_ftt_class_SBUIAnimationZoomDownApp, @selector(_setHidden:), (IMP)_patched_ftt_meth_$SBUIAnimationZoomDownApp$_setHidden$, (IMP *)_orig_ftt_meth_$SBUIAnimationZoomDownApp$_setHidden$);
    Class _ftt_class_SBApplication = objc_getClass("SBApplication");
    MSHookMessageEx(_ftt_class_SBApplication, @selector(wallpaperStyle), (IMP)_patched_ftt_meth_$SBApplication$wallpaperStyle, NULL);
}
