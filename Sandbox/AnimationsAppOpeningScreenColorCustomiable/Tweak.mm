#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$SBAppViewBackgroundView$setBackgroundColor$)(id, SEL, id);
static void _patched_ftt_meth_$SBAppViewBackgroundView$setBackgroundColor$(id self, SEL _cmd, id arg1) {
    // Set Color...
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:255/255.0];
    _orig_ftt_meth_$SBAppViewBackgroundView$setBackgroundColor$(self, _cmd, arg1);
}

static bool _patched_ftt_meth_$SBAppViewBackgroundView$_isTranslucent(id self, SEL _cmd) {
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBAppViewBackgroundView = objc_getClass("SBAppViewBackgroundView");
    MSHookMessageEx(_ftt_class_SBAppViewBackgroundView, @selector(setBackgroundColor:), (IMP)_patched_ftt_meth_$SBAppViewBackgroundView$setBackgroundColor$, (IMP *)_orig_ftt_meth_$SBAppViewBackgroundView$setBackgroundColor$);
    MSHookMessageEx(_ftt_class_SBAppViewBackgroundView, @selector(_isTranslucent), (IMP)_patched_ftt_meth_$SBAppViewBackgroundView$_isTranslucent, NULL);
}
