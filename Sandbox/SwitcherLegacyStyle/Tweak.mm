#import <UIKit/UIKit.h>

#include <substrate.h>

static long long _patched_ftt_meth_$SBAppSwitcherSettings$switcherStyle(id self, SEL _cmd) {
    return 0;
}

static id _patched_ftt_meth_$SBAppSwitcherPageView$overlay(id self, SEL _cmd) {
    return NULL;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBAppSwitcherSettings = objc_getClass("SBAppSwitcherSettings");
    MSHookMessageEx(_ftt_class_SBAppSwitcherSettings, @selector(switcherStyle), (IMP)_patched_ftt_meth_$SBAppSwitcherSettings$switcherStyle, NULL);
    Class _ftt_class_SBAppSwitcherPageView = objc_getClass("SBAppSwitcherPageView");
    MSHookMessageEx(_ftt_class_SBAppSwitcherPageView, @selector(overlay), (IMP)_patched_ftt_meth_$SBAppSwitcherPageView$overlay, NULL);
}
