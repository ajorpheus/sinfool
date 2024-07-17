#import <UIKit/UIKit.h>

#include <substrate.h>

static id _patched_ftt_meth_$TUCall$desktopImage(id self, SEL _cmd) {
    return NULL;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_TUCall = objc_getClass("TUCall");
    MSHookMessageEx(_ftt_class_TUCall, @selector(desktopImage), (IMP)_patched_ftt_meth_$TUCall$desktopImage, NULL);
}
