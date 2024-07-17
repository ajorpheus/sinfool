#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$_SFBrowserToolbar$isMinibar(id self, SEL _cmd) {
    return 1;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class__SFBrowserToolbar = objc_getClass("_SFBrowserToolbar");
    MSHookMessageEx(_ftt_class__SFBrowserToolbar, @selector(isMinibar), (IMP)_patched_ftt_meth_$_SFBrowserToolbar$isMinibar, NULL);
}
