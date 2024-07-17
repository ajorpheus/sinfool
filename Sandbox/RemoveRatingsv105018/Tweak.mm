#import <UIKit/UIKit.h>

#include <substrate.h>

static id _patched_ftt_meth_$YTVideoDetailsActionsView$init(id self, SEL _cmd) {
    return NULL;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_YTVideoDetailsActionsView = objc_getClass("YTVideoDetailsActionsView");
    MSHookMessageEx(_ftt_class_YTVideoDetailsActionsView, @selector(init), (IMP)_patched_ftt_meth_$YTVideoDetailsActionsView$init, NULL);
}
