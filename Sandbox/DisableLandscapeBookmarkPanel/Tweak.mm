#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$BrowserController$shouldShowSidebarInLandscape(id self, SEL _cmd) {
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_BrowserController = objc_getClass("BrowserController");
    MSHookMessageEx(_ftt_class_BrowserController, @selector(shouldShowSidebarInLandscape), (IMP)_patched_ftt_meth_$BrowserController$shouldShowSidebarInLandscape, NULL);
}
