#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$CKMessageEntryView$shouldShowPhotoButton(id self, SEL _cmd) {
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_CKMessageEntryView = objc_getClass("CKMessageEntryView");
    MSHookMessageEx(_ftt_class_CKMessageEntryView, @selector(shouldShowPhotoButton), (IMP)_patched_ftt_meth_$CKMessageEntryView$shouldShowPhotoButton, NULL);
}
