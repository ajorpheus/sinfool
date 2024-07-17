#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$CKMessageEntryContentView$setPlaceholderText$)(id, SEL, id);
static void _patched_ftt_meth_$CKMessageEntryContentView$setPlaceholderText$(id self, SEL _cmd, id arg1) {
    // Set Custom Text...
    arg1 = @"Write a message...";
    _orig_ftt_meth_$CKMessageEntryContentView$setPlaceholderText$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_CKMessageEntryContentView = objc_getClass("CKMessageEntryContentView");
    MSHookMessageEx(_ftt_class_CKMessageEntryContentView, @selector(setPlaceholderText:), (IMP)_patched_ftt_meth_$CKMessageEntryContentView$setPlaceholderText$, (IMP *)_orig_ftt_meth_$CKMessageEntryContentView$setPlaceholderText$);
}
