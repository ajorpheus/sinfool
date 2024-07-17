#import <UIKit/UIKit.h>

#include <substrate.h>

static id _patched_ftt_meth_$SBAppSwitcherStatusBarViewCache$fakeStatusBarForHomePageCell(id self, SEL _cmd) {
    return NULL;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBAppSwitcherStatusBarViewCache = objc_getClass("SBAppSwitcherStatusBarViewCache");
    MSHookMessageEx(_ftt_class_SBAppSwitcherStatusBarViewCache, @selector(fakeStatusBarForHomePageCell), (IMP)_patched_ftt_meth_$SBAppSwitcherStatusBarViewCache$fakeStatusBarForHomePageCell, NULL);
}
