#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$UIButton$setTintColor$)(id, SEL, id);
static void _patched_ftt_meth_$UIButton$setTintColor$(id self, SEL _cmd, id arg1) {
    // Camera & Mic Buttons
    arg1 = [UIColor colorWithRed:0/255.0 green:122/255.0 blue:255/255.0 alpha:255/255.0];
    _orig_ftt_meth_$UIButton$setTintColor$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$_UITextFieldRoundedRectBackgroundViewNeue$setFillColor$)(id, SEL, id);
static void _patched_ftt_meth_$_UITextFieldRoundedRectBackgroundViewNeue$setFillColor$(id self, SEL _cmd, id arg1) {
    // Text Input Field BG
    arg1 = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:255/255.0];
    _orig_ftt_meth_$_UITextFieldRoundedRectBackgroundViewNeue$setFillColor$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$_UITextFieldRoundedRectBackgroundViewNeue$setStrokeColor$)(id, SEL, id);
static void _patched_ftt_meth_$_UITextFieldRoundedRectBackgroundViewNeue$setStrokeColor$(id self, SEL _cmd, id arg1) {
    // Text Input Field Border
    arg1 = [UIColor colorWithRed:0/255.0 green:122/255.0 blue:255/255.0 alpha:255/255.0];
    _orig_ftt_meth_$_UITextFieldRoundedRectBackgroundViewNeue$setStrokeColor$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$UITextInputTraits$setInsertionPointColor$)(id, SEL, id);
static void _patched_ftt_meth_$UITextInputTraits$setInsertionPointColor$(id self, SEL _cmd, id arg1) {
    // Blinking Caret
    arg1 = [UIColor colorWithRed:0/255.0 green:122/255.0 blue:255/255.0 alpha:255/255.0];
    _orig_ftt_meth_$UITextInputTraits$setInsertionPointColor$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$UITextInputTraits$setSelectionBarColor$)(id, SEL, id);
static void _patched_ftt_meth_$UITextInputTraits$setSelectionBarColor$(id self, SEL _cmd, id arg1) {
    // Text Selection Bars
    arg1 = [UIColor colorWithRed:0/255.0 green:122/255.0 blue:255/255.0 alpha:255/255.0];
    _orig_ftt_meth_$UITextInputTraits$setSelectionBarColor$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$UIMorphingLabel$setTextColor$)(id, SEL, id);
static void _patched_ftt_meth_$UIMorphingLabel$setTextColor$(id self, SEL _cmd, id arg1) {
    // Predictive Text
    arg1 = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:255/255.0];
    _orig_ftt_meth_$UIMorphingLabel$setTextColor$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$UILabel$setHighlightedTextColor$)(id, SEL, id);
static void _patched_ftt_meth_$UILabel$setHighlightedTextColor$(id self, SEL _cmd, id arg1) {
    // Highlighted Text
    arg1 = [UIColor colorWithRed:0/255.0 green:122/255.0 blue:255/255.0 alpha:255/255.0];
    _orig_ftt_meth_$UILabel$setHighlightedTextColor$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_UIButton = objc_getClass("UIButton");
    MSHookMessageEx(_ftt_class_UIButton, @selector(setTintColor:), (IMP)_patched_ftt_meth_$UIButton$setTintColor$, (IMP *)_orig_ftt_meth_$UIButton$setTintColor$);
    Class _ftt_class__UITextFieldRoundedRectBackgroundViewNeue = objc_getClass("_UITextFieldRoundedRectBackgroundViewNeue");
    MSHookMessageEx(_ftt_class__UITextFieldRoundedRectBackgroundViewNeue, @selector(setFillColor:), (IMP)_patched_ftt_meth_$_UITextFieldRoundedRectBackgroundViewNeue$setFillColor$, (IMP *)_orig_ftt_meth_$_UITextFieldRoundedRectBackgroundViewNeue$setFillColor$);
    MSHookMessageEx(_ftt_class__UITextFieldRoundedRectBackgroundViewNeue, @selector(setStrokeColor:), (IMP)_patched_ftt_meth_$_UITextFieldRoundedRectBackgroundViewNeue$setStrokeColor$, (IMP *)_orig_ftt_meth_$_UITextFieldRoundedRectBackgroundViewNeue$setStrokeColor$);
    Class _ftt_class_UITextInputTraits = objc_getClass("UITextInputTraits");
    MSHookMessageEx(_ftt_class_UITextInputTraits, @selector(setInsertionPointColor:), (IMP)_patched_ftt_meth_$UITextInputTraits$setInsertionPointColor$, (IMP *)_orig_ftt_meth_$UITextInputTraits$setInsertionPointColor$);
    MSHookMessageEx(_ftt_class_UITextInputTraits, @selector(setSelectionBarColor:), (IMP)_patched_ftt_meth_$UITextInputTraits$setSelectionBarColor$, (IMP *)_orig_ftt_meth_$UITextInputTraits$setSelectionBarColor$);
    Class _ftt_class_UIMorphingLabel = objc_getClass("UIMorphingLabel");
    MSHookMessageEx(_ftt_class_UIMorphingLabel, @selector(setTextColor:), (IMP)_patched_ftt_meth_$UIMorphingLabel$setTextColor$, (IMP *)_orig_ftt_meth_$UIMorphingLabel$setTextColor$);
    Class _ftt_class_UILabel = objc_getClass("UILabel");
    MSHookMessageEx(_ftt_class_UILabel, @selector(setHighlightedTextColor:), (IMP)_patched_ftt_meth_$UILabel$setHighlightedTextColor$, (IMP *)_orig_ftt_meth_$UILabel$setHighlightedTextColor$);
}
