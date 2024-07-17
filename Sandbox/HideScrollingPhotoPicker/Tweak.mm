#import <UIKit/UIKit.h>

#include <substrate.h>

static double _patched_ftt_meth_$CKUIBehavior$photoPickerMaxPhotoHeight(id self, SEL _cmd) {
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_CKUIBehavior = objc_getClass("CKUIBehavior");
    MSHookMessageEx(_ftt_class_CKUIBehavior, @selector(photoPickerMaxPhotoHeight), (IMP)_patched_ftt_meth_$CKUIBehavior$photoPickerMaxPhotoHeight, NULL);
}
