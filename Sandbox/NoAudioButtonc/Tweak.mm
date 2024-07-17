#import <UIKit/UIKit.h>

#include <substrate.h>

static id _patched_ftt_meth_$CKMessageEntryView$audioButton(id self, SEL _cmd) {
    return NULL;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_CKMessageEntryView = objc_getClass("CKMessageEntryView");
    MSHookMessageEx(_ftt_class_CKMessageEntryView, @selector(audioButton), (IMP)_patched_ftt_meth_$CKMessageEntryView$audioButton, NULL);
}
