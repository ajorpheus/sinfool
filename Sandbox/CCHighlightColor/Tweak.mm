#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$SBControlCenterSettings$setHighlightColor$)(id, SEL, id);
static void _patched_ftt_meth_$SBControlCenterSettings$setHighlightColor$(id self, SEL _cmd, id arg1) {
    // Set Color...
    arg1 = [UIColor colorWithRed:35/255.0 green:218/255.0 blue:218/255.0 alpha:255/255.0];
    _orig_ftt_meth_$SBControlCenterSettings$setHighlightColor$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBControlCenterSettings = objc_getClass("SBControlCenterSettings");
    MSHookMessageEx(_ftt_class_SBControlCenterSettings, @selector(setHighlightColor:), (IMP)_patched_ftt_meth_$SBControlCenterSettings$setHighlightColor$, (IMP *)_orig_ftt_meth_$SBControlCenterSettings$setHighlightColor$);
}
