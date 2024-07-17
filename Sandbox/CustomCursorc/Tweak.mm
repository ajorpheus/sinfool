#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$UIKeyboardImpl$setCaretVisible$)(id, SEL, bool);
static void _patched_ftt_meth_$UIKeyboardImpl$setCaretVisible$(id self, SEL _cmd, bool arg1) {
    // Visibility
    arg1 = 1;
    _orig_ftt_meth_$UIKeyboardImpl$setCaretVisible$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$UIKeyboardImpl$setCaretBlinks$)(id, SEL, bool);
static void _patched_ftt_meth_$UIKeyboardImpl$setCaretBlinks$(id self, SEL _cmd, bool arg1) {
    // Blinks
    arg1 = 1;
    _orig_ftt_meth_$UIKeyboardImpl$setCaretBlinks$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$UITextInputTraits$setInsertionPointColor$)(id, SEL, id);
static void _patched_ftt_meth_$UITextInputTraits$setInsertionPointColor$(id self, SEL _cmd, id arg1) {
    // Color
    arg1 = [UIColor colorWithRed:0/255.0 green:122/255.0 blue:255/255.0 alpha:255/255.0];
    _orig_ftt_meth_$UITextInputTraits$setInsertionPointColor$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$UITextInputTraits$setSelectionBarColor$)(id, SEL, id);
static void _patched_ftt_meth_$UITextInputTraits$setSelectionBarColor$(id self, SEL _cmd, id arg1) {
    // Color (Text Selection Bars)
    arg1 = [UIColor colorWithRed:0/255.0 green:122/255.0 blue:255/255.0 alpha:255/255.0];
    _orig_ftt_meth_$UITextInputTraits$setSelectionBarColor$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_UIKeyboardImpl = objc_getClass("UIKeyboardImpl");
    MSHookMessageEx(_ftt_class_UIKeyboardImpl, @selector(setCaretVisible:), (IMP)_patched_ftt_meth_$UIKeyboardImpl$setCaretVisible$, (IMP *)_orig_ftt_meth_$UIKeyboardImpl$setCaretVisible$);
    MSHookMessageEx(_ftt_class_UIKeyboardImpl, @selector(setCaretBlinks:), (IMP)_patched_ftt_meth_$UIKeyboardImpl$setCaretBlinks$, (IMP *)_orig_ftt_meth_$UIKeyboardImpl$setCaretBlinks$);
    Class _ftt_class_UITextInputTraits = objc_getClass("UITextInputTraits");
    MSHookMessageEx(_ftt_class_UITextInputTraits, @selector(setInsertionPointColor:), (IMP)_patched_ftt_meth_$UITextInputTraits$setInsertionPointColor$, (IMP *)_orig_ftt_meth_$UITextInputTraits$setInsertionPointColor$);
    MSHookMessageEx(_ftt_class_UITextInputTraits, @selector(setSelectionBarColor:), (IMP)_patched_ftt_meth_$UITextInputTraits$setSelectionBarColor$, (IMP *)_orig_ftt_meth_$UITextInputTraits$setSelectionBarColor$);
}
