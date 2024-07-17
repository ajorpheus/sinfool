#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$_SFNavigationBarItem$overrideBarStyleForSecurityWarning(id self, SEL _cmd) {
    return 1;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class__SFNavigationBarItem = objc_getClass("_SFNavigationBarItem");
    MSHookMessageEx(_ftt_class__SFNavigationBarItem, @selector(overrideBarStyleForSecurityWarning), (IMP)_patched_ftt_meth_$_SFNavigationBarItem$overrideBarStyleForSecurityWarning, NULL);
}
