#import <UIKit/UIKit.h>

#include <substrate.h>

static BOOL _patched_ftt_meth_$AppLaunchPresenter$shouldShowStartupAuthScreen(id self, SEL _cmd) {
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_AppLaunchPresenter = objc_getClass("AppLaunchPresenter");
    MSHookMessageEx(_ftt_class_AppLaunchPresenter, @selector(shouldShowStartupAuthScreen), (IMP)_patched_ftt_meth_$AppLaunchPresenter$shouldShowStartupAuthScreen, NULL);
}
