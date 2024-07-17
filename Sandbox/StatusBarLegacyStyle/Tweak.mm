#import <UIKit/UIKit.h>

#include <substrate.h>

static long long _patched_ftt_meth_$UIStatusBarStyleRequest$style(id self, SEL _cmd) {
    // Enable on LS/HS:  (NO=pass-through, Black=0, Translucent=1)
    return 1;
}

static bool _patched_ftt_meth_$UIStatusBar$simulatesLegacyAppearance(id self, SEL _cmd) {
    return 1;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_UIStatusBarStyleRequest = objc_getClass("UIStatusBarStyleRequest");
    MSHookMessageEx(_ftt_class_UIStatusBarStyleRequest, @selector(style), (IMP)_patched_ftt_meth_$UIStatusBarStyleRequest$style, NULL);
    Class _ftt_class_UIStatusBar = objc_getClass("UIStatusBar");
    MSHookMessageEx(_ftt_class_UIStatusBar, @selector(simulatesLegacyAppearance), (IMP)_patched_ftt_meth_$UIStatusBar$simulatesLegacyAppearance, NULL);
}
