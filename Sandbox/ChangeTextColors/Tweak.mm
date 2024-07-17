#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$UILabel$setTextColor$)(id, SEL, id);
static void _patched_ftt_meth_$UILabel$setTextColor$(id self, SEL _cmd, id arg1) {
    // Labels
    arg1 = [UIColor colorWithRed:255/255.0 green:127/255.0 blue:0/255.0 alpha:255/255.0];
    _orig_ftt_meth_$UILabel$setTextColor$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$UILabel$setHighlightedTextColor$)(id, SEL, id);
static void _patched_ftt_meth_$UILabel$setHighlightedTextColor$(id self, SEL _cmd, id arg1) {
    // Highlighted
    arg1 = [UIColor colorWithRed:249/255.0 green:6/255.0 blue:129/255.0 alpha:255/255.0];
    _orig_ftt_meth_$UILabel$setHighlightedTextColor$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$_UICascadingTextStorage$setTextColor$)(id, SEL, id);
static void _patched_ftt_meth_$_UICascadingTextStorage$setTextColor$(id self, SEL _cmd, id arg1) {
    // Folder Titles, Input Fields etc.
    arg1 = [UIColor colorWithRed:187/255.0 green:7/255.0 blue:250/255.0 alpha:255/255.0];
    _orig_ftt_meth_$_UICascadingTextStorage$setTextColor$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_UILabel = objc_getClass("UILabel");
    MSHookMessageEx(_ftt_class_UILabel, @selector(setTextColor:), (IMP)_patched_ftt_meth_$UILabel$setTextColor$, (IMP *)_orig_ftt_meth_$UILabel$setTextColor$);
    MSHookMessageEx(_ftt_class_UILabel, @selector(setHighlightedTextColor:), (IMP)_patched_ftt_meth_$UILabel$setHighlightedTextColor$, (IMP *)_orig_ftt_meth_$UILabel$setHighlightedTextColor$);
    Class _ftt_class__UICascadingTextStorage = objc_getClass("_UICascadingTextStorage");
    MSHookMessageEx(_ftt_class__UICascadingTextStorage, @selector(setTextColor:), (IMP)_patched_ftt_meth_$_UICascadingTextStorage$setTextColor$, (IMP *)_orig_ftt_meth_$_UICascadingTextStorage$setTextColor$);
}
