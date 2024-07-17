#import <UIKit/UIKit.h>

#include <substrate.h>

static float _patched_ftt_meth_$_UIAlertControllerView$_verticalLayoutWidth(id self, SEL _cmd) {
    // Set Width... (iP5=322, etc)
    return 322;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class__UIAlertControllerView = objc_getClass("_UIAlertControllerView");
    MSHookMessageEx(_ftt_class__UIAlertControllerView, @selector(_verticalLayoutWidth), (IMP)_patched_ftt_meth_$_UIAlertControllerView$_verticalLayoutWidth, NULL);
}
