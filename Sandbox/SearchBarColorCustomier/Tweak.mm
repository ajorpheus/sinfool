#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$UISearchBarBackground$setBackgroundColor$)(id, SEL, id);
static void _patched_ftt_meth_$UISearchBarBackground$setBackgroundColor$(id self, SEL _cmd, id arg1) {
    // (Search Bar) - BG Color (⚠️: To Work, Requires BG Alpha = "0"): Set Color or "P" for stock...
    arg1 = [UIColor colorWithRed:29/255.0 green:29/255.0 blue:29/255.0 alpha:255/255.0];
    _orig_ftt_meth_$UISearchBarBackground$setBackgroundColor$(self, _cmd, arg1);
}

static id (*_orig_ftt_meth_$UISearchBarBackground$_createBackgroundImageForBarStyle$alpha$)(id, SEL, long long, double);
static id _patched_ftt_meth_$UISearchBarBackground$_createBackgroundImageForBarStyle$alpha$(id self, SEL _cmd, long long arg1, double arg2) {
    // (Search Bar) - BG Style & Alpha (⚠️: If Alpha Used, Overrides Style): (Style-Arg#1): Dark=1, Stock=P (Alpha-Arg#2): Range: 0.0-1.0
    arg2 = 0;
    return _orig_ftt_meth_$UISearchBarBackground$_createBackgroundImageForBarStyle$alpha$(self, _cmd, arg1, arg2);
}

static void (*_orig_ftt_meth_$_UISearchBarSearchFieldBackgroundView$setFillColor$)(id, SEL, id);
static void _patched_ftt_meth_$_UISearchBarSearchFieldBackgroundView$setFillColor$(id self, SEL _cmd, id arg1) {
    // (Text Field BG) - Color (⚠️: If Used, Overrides Styles Below): Set Color or "P" for stock/to use styles...
    arg1 = [UIColor colorWithRed:18/255.0 green:18/255.0 blue:18/255.0 alpha:255/255.0];
    _orig_ftt_meth_$_UISearchBarSearchFieldBackgroundView$setFillColor$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$UISearchBarTextFieldLabel$setTextColor$)(id, SEL, id);
static void _patched_ftt_meth_$UISearchBarTextFieldLabel$setTextColor$(id self, SEL _cmd, id arg1) {
    // (Text Field) - Placeholder Text Color: Set Color or "D" for stock...
    arg1 = [UIColor colorWithRed:142/255.0 green:142/255.0 blue:147/255.0 alpha:255/255.0];
    _orig_ftt_meth_$UISearchBarTextFieldLabel$setTextColor$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$_UICascadingTextStorage$setTextColor$)(id, SEL, id);
static void _patched_ftt_meth_$_UICascadingTextStorage$setTextColor$(id self, SEL _cmd, id arg1) {
    // (Text Field) - Input Text Color
    arg1 = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:255/255.0];
    _orig_ftt_meth_$_UICascadingTextStorage$setTextColor$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_UISearchBarBackground = objc_getClass("UISearchBarBackground");
    MSHookMessageEx(_ftt_class_UISearchBarBackground, @selector(setBackgroundColor:), (IMP)_patched_ftt_meth_$UISearchBarBackground$setBackgroundColor$, (IMP *)_orig_ftt_meth_$UISearchBarBackground$setBackgroundColor$);
    MSHookMessageEx(_ftt_class_UISearchBarBackground, @selector(_createBackgroundImageForBarStyle:alpha:), (IMP)_patched_ftt_meth_$UISearchBarBackground$_createBackgroundImageForBarStyle$alpha$, (IMP *)_orig_ftt_meth_$UISearchBarBackground$_createBackgroundImageForBarStyle$alpha$);
    Class _ftt_class__UISearchBarSearchFieldBackgroundView = objc_getClass("_UISearchBarSearchFieldBackgroundView");
    MSHookMessageEx(_ftt_class__UISearchBarSearchFieldBackgroundView, @selector(setFillColor:), (IMP)_patched_ftt_meth_$_UISearchBarSearchFieldBackgroundView$setFillColor$, (IMP *)_orig_ftt_meth_$_UISearchBarSearchFieldBackgroundView$setFillColor$);
    Class _ftt_class_UISearchBarTextFieldLabel = objc_getClass("UISearchBarTextFieldLabel");
    MSHookMessageEx(_ftt_class_UISearchBarTextFieldLabel, @selector(setTextColor:), (IMP)_patched_ftt_meth_$UISearchBarTextFieldLabel$setTextColor$, (IMP *)_orig_ftt_meth_$UISearchBarTextFieldLabel$setTextColor$);
    Class _ftt_class__UICascadingTextStorage = objc_getClass("_UICascadingTextStorage");
    MSHookMessageEx(_ftt_class__UICascadingTextStorage, @selector(setTextColor:), (IMP)_patched_ftt_meth_$_UICascadingTextStorage$setTextColor$, (IMP *)_orig_ftt_meth_$_UICascadingTextStorage$setTextColor$);
}
