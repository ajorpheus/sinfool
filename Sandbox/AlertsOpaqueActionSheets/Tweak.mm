#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$UIInterfaceActionGroupView$_setDrawsBackground$)(id, SEL, bool);
static void _patched_ftt_meth_$UIInterfaceActionGroupView$_setDrawsBackground$(id self, SEL _cmd, bool arg1) {
    arg1 = 0;
    _orig_ftt_meth_$UIInterfaceActionGroupView$_setDrawsBackground$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_UIInterfaceActionGroupView = objc_getClass("UIInterfaceActionGroupView");
    MSHookMessageEx(_ftt_class_UIInterfaceActionGroupView, @selector(_setDrawsBackground:), (IMP)_patched_ftt_meth_$UIInterfaceActionGroupView$_setDrawsBackground$, (IMP *)_orig_ftt_meth_$UIInterfaceActionGroupView$_setDrawsBackground$);
}
