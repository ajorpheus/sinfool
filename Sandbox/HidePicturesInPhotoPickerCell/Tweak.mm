#import <UIKit/UIKit.h>

#include <substrate.h>

static id _patched_ftt_meth_$CKPhotoPickerController$photosCollectionView(id self, SEL _cmd) {
    return NULL;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_CKPhotoPickerController = objc_getClass("CKPhotoPickerController");
    MSHookMessageEx(_ftt_class_CKPhotoPickerController, @selector(photosCollectionView), (IMP)_patched_ftt_meth_$CKPhotoPickerController$photosCollectionView, NULL);
}
