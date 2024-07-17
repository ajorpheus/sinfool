#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$NCLookHeaderContentView$_configureTitleLabel$forStyle$)(id, SEL, id, long long);
static void _patched_ftt_meth_$NCLookHeaderContentView$_configureTitleLabel$forStyle$(id self, SEL _cmd, id arg1, long long arg2) {
    // (Arg#2): (Gray=1, Larger Black Text=2)
    arg2 = 2;
    _orig_ftt_meth_$NCLookHeaderContentView$_configureTitleLabel$forStyle$(self, _cmd, arg1, arg2);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_NCLookHeaderContentView = objc_getClass("NCLookHeaderContentView");
    MSHookMessageEx(_ftt_class_NCLookHeaderContentView, @selector(_configureTitleLabel:forStyle:), (IMP)_patched_ftt_meth_$NCLookHeaderContentView$_configureTitleLabel$forStyle$, (IMP *)_orig_ftt_meth_$NCLookHeaderContentView$_configureTitleLabel$forStyle$);
}
