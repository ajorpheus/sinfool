#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$BrowserToolbar$isMinibar(id self, SEL _cmd) {
    return 1;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_BrowserToolbar = objc_getClass("BrowserToolbar");
    MSHookMessageEx(_ftt_class_BrowserToolbar, @selector(isMinibar), (IMP)_patched_ftt_meth_$BrowserToolbar$isMinibar, NULL);
}
