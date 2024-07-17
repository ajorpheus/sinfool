#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$MTPlatterHeaderContentView$setTitle$)(id, SEL, id);
static void _patched_ftt_meth_$MTPlatterHeaderContentView$setTitle$(id self, SEL _cmd, id arg1) {
    arg1 = @" ";
    _orig_ftt_meth_$MTPlatterHeaderContentView$setTitle$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_MTPlatterHeaderContentView = objc_getClass("MTPlatterHeaderContentView");
    MSHookMessageEx(_ftt_class_MTPlatterHeaderContentView, @selector(setTitle:), (IMP)_patched_ftt_meth_$MTPlatterHeaderContentView$setTitle$, (IMP *)_orig_ftt_meth_$MTPlatterHeaderContentView$setTitle$);
}
