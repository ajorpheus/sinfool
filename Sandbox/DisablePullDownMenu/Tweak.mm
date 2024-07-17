#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$OverscrollActionsController$isOverscrollActionEnabled(id self, SEL _cmd) {
    // Pull Down Menu:  Disable=FALSE
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_OverscrollActionsController = objc_getClass("OverscrollActionsController");
    MSHookMessageEx(_ftt_class_OverscrollActionsController, @selector(isOverscrollActionEnabled), (IMP)_patched_ftt_meth_$OverscrollActionsController$isOverscrollActionEnabled, NULL);
}
