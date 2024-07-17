#import <UIKit/UIKit.h>

#include <substrate.h>

static id _patched_ftt_meth_$_UIBadgeBackground$initWithImage$(id self, SEL _cmd, id arg1) {
    // Hide Badge/BG:  Yes=NULL, No=pass-through
    return NULL;
}

static void (*_orig_ftt_meth_$_UIBadgeView$setValue$)(id, SEL, id);
static void _patched_ftt_meth_$_UIBadgeView$setValue$(id self, SEL _cmd, id arg1) {
    // Set Custom Text... OR Stock=Delete This Entry 
    arg1 = @"💋";
    _orig_ftt_meth_$_UIBadgeView$setValue$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class__UIBadgeBackground = objc_getClass("_UIBadgeBackground");
    MSHookMessageEx(_ftt_class__UIBadgeBackground, @selector(initWithImage:), (IMP)_patched_ftt_meth_$_UIBadgeBackground$initWithImage$, NULL);
    Class _ftt_class__UIBadgeView = objc_getClass("_UIBadgeView");
    MSHookMessageEx(_ftt_class__UIBadgeView, @selector(setValue:), (IMP)_patched_ftt_meth_$_UIBadgeView$setValue$, (IMP *)_orig_ftt_meth_$_UIBadgeView$setValue$);
}
