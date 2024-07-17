#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$UIStatusBar$_crossfadeToNewForegroundViewWithAlpha$)(id, SEL, double);
static void _patched_ftt_meth_$UIStatusBar$_crossfadeToNewForegroundViewWithAlpha$(id self, SEL _cmd, double arg1) {
    // Set Alpha...  Range (0.0-1.0)
    arg1 = 0.5;
    _orig_ftt_meth_$UIStatusBar$_crossfadeToNewForegroundViewWithAlpha$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_UIStatusBar = objc_getClass("UIStatusBar");
    MSHookMessageEx(_ftt_class_UIStatusBar, @selector(_crossfadeToNewForegroundViewWithAlpha:), (IMP)_patched_ftt_meth_$UIStatusBar$_crossfadeToNewForegroundViewWithAlpha$, (IMP *)_orig_ftt_meth_$UIStatusBar$_crossfadeToNewForegroundViewWithAlpha$);
}
