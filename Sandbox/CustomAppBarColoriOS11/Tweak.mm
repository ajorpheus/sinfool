#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$CKBrowserSwitcherFooterView$setBackgroundColor$)(id, SEL, id);
static void _patched_ftt_meth_$CKBrowserSwitcherFooterView$setBackgroundColor$(id self, SEL _cmd, id arg1) {
    // Set Bar Color...
    arg1 = [UIColor colorWithRed:25/255.0 green:25/255.0 blue:25/255.0 alpha:255/255.0];
    _orig_ftt_meth_$CKBrowserSwitcherFooterView$setBackgroundColor$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$CKBrowserPluginCell$setSelected$)(id, SEL, bool);
static void _patched_ftt_meth_$CKBrowserPluginCell$setSelected$(id self, SEL _cmd, bool arg1) {
    arg1 = 0;
    _orig_ftt_meth_$CKBrowserPluginCell$setSelected$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_CKBrowserSwitcherFooterView = objc_getClass("CKBrowserSwitcherFooterView");
    MSHookMessageEx(_ftt_class_CKBrowserSwitcherFooterView, @selector(setBackgroundColor:), (IMP)_patched_ftt_meth_$CKBrowserSwitcherFooterView$setBackgroundColor$, (IMP *)_orig_ftt_meth_$CKBrowserSwitcherFooterView$setBackgroundColor$);
    Class _ftt_class_CKBrowserPluginCell = objc_getClass("CKBrowserPluginCell");
    MSHookMessageEx(_ftt_class_CKBrowserPluginCell, @selector(setSelected:), (IMP)_patched_ftt_meth_$CKBrowserPluginCell$setSelected$, (IMP *)_orig_ftt_meth_$CKBrowserPluginCell$setSelected$);
}
