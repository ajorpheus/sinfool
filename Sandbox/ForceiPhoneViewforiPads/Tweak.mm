#import <UIKit/UIKit.h>

#include <substrate.h>

static long long _patched_ftt_meth_$UIDevice$userInterfaceIdiom(id self, SEL _cmd) {
    // •
    return 0;
}

static bool _patched_ftt_meth_$UIWindow$_shouldAutorotateToInterfaceOrientation$checkForDismissal$isRotationDisabled$(id self, SEL _cmd, long long arg1, bool arg2, bool* arg3) {
    // •
    return 1;
}

static void (*_orig_ftt_meth_$UIWindow$_updateToInterfaceOrientation$duration$force$)(id, SEL, long long, double, bool);
static void _patched_ftt_meth_$UIWindow$_updateToInterfaceOrientation$duration$force$(id self, SEL _cmd, long long arg1, double arg2, bool arg3) {
    // •
    arg3 = 0;
    _orig_ftt_meth_$UIWindow$_updateToInterfaceOrientation$duration$force$(self, _cmd, arg1, arg2, arg3);
}

static void (*_orig_ftt_meth_$UIDevice$setOrientation$animated$)(id, SEL, long long, bool);
static void _patched_ftt_meth_$UIDevice$setOrientation$animated$(id self, SEL _cmd, long long arg1, bool arg2) {
    // •
    arg2 = 0;
    _orig_ftt_meth_$UIDevice$setOrientation$animated$(self, _cmd, arg1, arg2);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_UIDevice = objc_getClass("UIDevice");
    MSHookMessageEx(_ftt_class_UIDevice, @selector(userInterfaceIdiom), (IMP)_patched_ftt_meth_$UIDevice$userInterfaceIdiom, NULL);
    Class _ftt_class_UIWindow = objc_getClass("UIWindow");
    MSHookMessageEx(_ftt_class_UIWindow, @selector(_shouldAutorotateToInterfaceOrientation:checkForDismissal:isRotationDisabled:), (IMP)_patched_ftt_meth_$UIWindow$_shouldAutorotateToInterfaceOrientation$checkForDismissal$isRotationDisabled$, NULL);
    MSHookMessageEx(_ftt_class_UIWindow, @selector(_updateToInterfaceOrientation:duration:force:), (IMP)_patched_ftt_meth_$UIWindow$_updateToInterfaceOrientation$duration$force$, (IMP *)_orig_ftt_meth_$UIWindow$_updateToInterfaceOrientation$duration$force$);
    MSHookMessageEx(_ftt_class_UIDevice, @selector(setOrientation:animated:), (IMP)_patched_ftt_meth_$UIDevice$setOrientation$animated$, (IMP *)_orig_ftt_meth_$UIDevice$setOrientation$animated$);
}
