#import <UIKit/UIKit.h>

#include <substrate.h>

static long long _patched_ftt_meth_$CKPhotoPickerCollectionViewController$maxAssetsToDisplay(id self, SEL _cmd) {
    // Set # Of Photos To Show...  (stock=50)
    return 500;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_CKPhotoPickerCollectionViewController = objc_getClass("CKPhotoPickerCollectionViewController");
    MSHookMessageEx(_ftt_class_CKPhotoPickerCollectionViewController, @selector(maxAssetsToDisplay), (IMP)_patched_ftt_meth_$CKPhotoPickerCollectionViewController$maxAssetsToDisplay, NULL);
}
