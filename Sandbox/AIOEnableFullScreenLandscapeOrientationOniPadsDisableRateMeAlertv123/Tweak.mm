#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$UIApplication$_setClassicMode$)(id, SEL, long long);
static void _patched_ftt_meth_$UIApplication$_setClassicMode$(id self, SEL _cmd, long long arg1) {
    arg1 = 0;
    _orig_ftt_meth_$UIApplication$_setClassicMode$(self, _cmd, arg1);
}

static bool _patched_ftt_meth_$UIViewController$_ignoreAppSupportedOrientations(id self, SEL _cmd) {
    return 1;
}

static bool _patched_ftt_meth_$iRate$ratedAnyVersion(id self, SEL _cmd) {
    return 1;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_UIApplication = objc_getClass("UIApplication");
    MSHookMessageEx(_ftt_class_UIApplication, @selector(_setClassicMode:), (IMP)_patched_ftt_meth_$UIApplication$_setClassicMode$, (IMP *)_orig_ftt_meth_$UIApplication$_setClassicMode$);
    Class _ftt_class_UIViewController = objc_getClass("UIViewController");
    MSHookMessageEx(_ftt_class_UIViewController, @selector(_ignoreAppSupportedOrientations), (IMP)_patched_ftt_meth_$UIViewController$_ignoreAppSupportedOrientations, NULL);
    Class _ftt_class_iRate = objc_getClass("iRate");
    MSHookMessageEx(_ftt_class_iRate, @selector(ratedAnyVersion), (IMP)_patched_ftt_meth_$iRate$ratedAnyVersion, NULL);
}
