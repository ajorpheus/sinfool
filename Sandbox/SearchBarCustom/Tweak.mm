#import <UIKit/UIKit.h>

#include <substrate.h>

static id _patched_ftt_meth_$UISearchBar$_imageForSearchBarIcon$state$customImage$(id self, SEL _cmd, long long arg1, unsigned long long arg2, bool* arg3) {
    // Search Icon (Return Value): (Hide=N, Show=P)
    return NULL;
}

static void (*_orig_ftt_meth_$UISearchBarTextFieldLabel$setText$)(id, SEL, id);
static void _patched_ftt_meth_$UISearchBarTextFieldLabel$setText$(id self, SEL _cmd, id arg1) {
    // Set Custom Placeholder Text...
    arg1 = @"🔍";
    _orig_ftt_meth_$UISearchBarTextFieldLabel$setText$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$UISearchBarTextFieldLabel$setTextColor$)(id, SEL, id);
static void _patched_ftt_meth_$UISearchBarTextFieldLabel$setTextColor$(id self, SEL _cmd, id arg1) {
    // Set Custom Placeholder Text Color...
    arg1 = [UIColor colorWithRed:142/255.0 green:142/255.0 blue:147/255.0 alpha:255/255.0];
    _orig_ftt_meth_$UISearchBarTextFieldLabel$setTextColor$(self, _cmd, arg1);
}

static id (*_orig_ftt_meth_$UISearchBarBackground$_createBackgroundImageForBarStyle$alpha$)(id, SEL, long long, double);
static id _patched_ftt_meth_$UISearchBarBackground$_createBackgroundImageForBarStyle$alpha$(id self, SEL _cmd, long long arg1, double arg2) {
    // BG Alpha (Arg#2): (Range 0.0-1.0, Hide=0, Default=P)
    arg2 = 0;
    return _orig_ftt_meth_$UISearchBarBackground$_createBackgroundImageForBarStyle$alpha$(self, _cmd, arg1, arg2);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_UISearchBar = objc_getClass("UISearchBar");
    MSHookMessageEx(_ftt_class_UISearchBar, @selector(_imageForSearchBarIcon:state:customImage:), (IMP)_patched_ftt_meth_$UISearchBar$_imageForSearchBarIcon$state$customImage$, NULL);
    Class _ftt_class_UISearchBarTextFieldLabel = objc_getClass("UISearchBarTextFieldLabel");
    MSHookMessageEx(_ftt_class_UISearchBarTextFieldLabel, @selector(setText:), (IMP)_patched_ftt_meth_$UISearchBarTextFieldLabel$setText$, (IMP *)_orig_ftt_meth_$UISearchBarTextFieldLabel$setText$);
    MSHookMessageEx(_ftt_class_UISearchBarTextFieldLabel, @selector(setTextColor:), (IMP)_patched_ftt_meth_$UISearchBarTextFieldLabel$setTextColor$, (IMP *)_orig_ftt_meth_$UISearchBarTextFieldLabel$setTextColor$);
    Class _ftt_class_UISearchBarBackground = objc_getClass("UISearchBarBackground");
    MSHookMessageEx(_ftt_class_UISearchBarBackground, @selector(_createBackgroundImageForBarStyle:alpha:), (IMP)_patched_ftt_meth_$UISearchBarBackground$_createBackgroundImageForBarStyle$alpha$, (IMP *)_orig_ftt_meth_$UISearchBarBackground$_createBackgroundImageForBarStyle$alpha$);
}
