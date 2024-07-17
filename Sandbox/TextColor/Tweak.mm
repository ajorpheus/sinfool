#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$NoteDateLabel$setTextColor$)(id, SEL, id);
static void _patched_ftt_meth_$NoteDateLabel$setTextColor$(id self, SEL _cmd, id arg1) {
    // Set Date Text Color...
    arg1 = [UIColor colorWithRed:255/255.0 green:127/255.0 blue:0/255.0 alpha:255/255.0];
    _orig_ftt_meth_$NoteDateLabel$setTextColor$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$NoteTextView$setTextColor$)(id, SEL, id);
static void _patched_ftt_meth_$NoteTextView$setTextColor$(id self, SEL _cmd, id arg1) {
    // Set Text Color...
    arg1 = [UIColor colorWithRed:113/255.0 green:33/255.0 blue:147/255.0 alpha:255/255.0];
    _orig_ftt_meth_$NoteTextView$setTextColor$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_NoteDateLabel = objc_getClass("NoteDateLabel");
    MSHookMessageEx(_ftt_class_NoteDateLabel, @selector(setTextColor:), (IMP)_patched_ftt_meth_$NoteDateLabel$setTextColor$, (IMP *)_orig_ftt_meth_$NoteDateLabel$setTextColor$);
    Class _ftt_class_NoteTextView = objc_getClass("NoteTextView");
    MSHookMessageEx(_ftt_class_NoteTextView, @selector(setTextColor:), (IMP)_patched_ftt_meth_$NoteTextView$setTextColor$, (IMP *)_orig_ftt_meth_$NoteTextView$setTextColor$);
}
