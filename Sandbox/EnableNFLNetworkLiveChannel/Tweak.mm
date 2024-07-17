#import <UIKit/UIKit.h>

#include <substrate.h>

static long long _patched_ftt_meth_$UIDevice$userInterfaceIdiom(id self, SEL _cmd) {
    return 1;
}

static bool _patched_ftt_meth_$UIWindow$_shouldAutorotateToInterfaceOrientation$checkForDismissal$isRotationDisabled$(id self, SEL _cmd, long long arg1, bool arg2, bool* arg3) {
    return 1;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_UIDevice = objc_getClass("UIDevice");
    MSHookMessageEx(_ftt_class_UIDevice, @selector(userInterfaceIdiom), (IMP)_patched_ftt_meth_$UIDevice$userInterfaceIdiom, NULL);
    Class _ftt_class_UIWindow = objc_getClass("UIWindow");
    MSHookMessageEx(_ftt_class_UIWindow, @selector(_shouldAutorotateToInterfaceOrientation:checkForDismissal:isRotationDisabled:), (IMP)_patched_ftt_meth_$UIWindow$_shouldAutorotateToInterfaceOrientation$checkForDismissal$isRotationDisabled$, NULL);
}
