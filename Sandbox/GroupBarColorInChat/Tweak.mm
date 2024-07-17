#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$MFComposeRecipientTextView$setBackgroundColor$)(id, SEL, id);
static void _patched_ftt_meth_$MFComposeRecipientTextView$setBackgroundColor$(id self, SEL _cmd, id arg1) {
    // Set Color...
    arg1 = [UIColor colorWithRed:35/255.0 green:35/255.0 blue:35/255.0 alpha:255/255.0];
    _orig_ftt_meth_$MFComposeRecipientTextView$setBackgroundColor$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_MFComposeRecipientTextView = objc_getClass("MFComposeRecipientTextView");
    MSHookMessageEx(_ftt_class_MFComposeRecipientTextView, @selector(setBackgroundColor:), (IMP)_patched_ftt_meth_$MFComposeRecipientTextView$setBackgroundColor$, (IMP *)_orig_ftt_meth_$MFComposeRecipientTextView$setBackgroundColor$);
}
