#import <UIKit/UIKit.h>

#include <substrate.h>

static id (*_orig_ftt_meth_$_UIBadgeView$initWithText$)(id, SEL, id);
static id _patched_ftt_meth_$_UIBadgeView$initWithText$(id self, SEL _cmd, id arg1) {
    // Set Custom Text...
    arg1 = @" ";
    return _orig_ftt_meth_$_UIBadgeView$initWithText$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class__UIBadgeView = objc_getClass("_UIBadgeView");
    MSHookMessageEx(_ftt_class__UIBadgeView, @selector(initWithText:), (IMP)_patched_ftt_meth_$_UIBadgeView$initWithText$, (IMP *)_orig_ftt_meth_$_UIBadgeView$initWithText$);
}
