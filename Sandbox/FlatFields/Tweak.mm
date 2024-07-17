#import <UIKit/UIKit.h>

#include <substrate.h>

static id (*_orig_ftt_meth_$UISearchBarBackground$_createBackgroundImageForBarStyle$alpha$)(id, SEL, long long, double);
static id _patched_ftt_meth_$UISearchBarBackground$_createBackgroundImageForBarStyle$alpha$(id self, SEL _cmd, long long arg1, double arg2) {
    // Search Bar - Hide Background: (Arg#2) Yes=0, No=P
    arg2 = 0;
    return _orig_ftt_meth_$UISearchBarBackground$_createBackgroundImageForBarStyle$alpha$(self, _cmd, arg1, arg2);
}

static void (*_orig_ftt_meth_$_SFNavigationBarURLButton$setBackgroundAlphaFactor$)(id, SEL, double);
static void _patched_ftt_meth_$_SFNavigationBarURLButton$setBackgroundAlphaFactor$(id self, SEL _cmd, double arg1) {
    arg1 = 0;
    _orig_ftt_meth_$_SFNavigationBarURLButton$setBackgroundAlphaFactor$(self, _cmd, arg1);
}

static double _patched_ftt_meth_$CKUIBehavior$entryFieldCoverLineWidth(id self, SEL _cmd) {
    return 0;
}

static id _patched_ftt_meth_$CKUITheme$entryFieldCoverFillColor(id self, SEL _cmd) {
    return NULL;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_UISearchBarBackground = objc_getClass("UISearchBarBackground");
    MSHookMessageEx(_ftt_class_UISearchBarBackground, @selector(_createBackgroundImageForBarStyle:alpha:), (IMP)_patched_ftt_meth_$UISearchBarBackground$_createBackgroundImageForBarStyle$alpha$, (IMP *)_orig_ftt_meth_$UISearchBarBackground$_createBackgroundImageForBarStyle$alpha$);
    Class _ftt_class__SFNavigationBarURLButton = objc_getClass("_SFNavigationBarURLButton");
    MSHookMessageEx(_ftt_class__SFNavigationBarURLButton, @selector(setBackgroundAlphaFactor:), (IMP)_patched_ftt_meth_$_SFNavigationBarURLButton$setBackgroundAlphaFactor$, (IMP *)_orig_ftt_meth_$_SFNavigationBarURLButton$setBackgroundAlphaFactor$);
    Class _ftt_class_CKUIBehavior = objc_getClass("CKUIBehavior");
    MSHookMessageEx(_ftt_class_CKUIBehavior, @selector(entryFieldCoverLineWidth), (IMP)_patched_ftt_meth_$CKUIBehavior$entryFieldCoverLineWidth, NULL);
    Class _ftt_class_CKUITheme = objc_getClass("CKUITheme");
    MSHookMessageEx(_ftt_class_CKUITheme, @selector(entryFieldCoverFillColor), (IMP)_patched_ftt_meth_$CKUITheme$entryFieldCoverFillColor, NULL);
}
