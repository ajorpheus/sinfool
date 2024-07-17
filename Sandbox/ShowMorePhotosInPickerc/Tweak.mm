#import <UIKit/UIKit.h>

#include <substrate.h>

static long long _patched_ftt_meth_$CKPhotoPickerCollectionViewController$maxAssetsToDisplay(id self, SEL _cmd) {
    // Set # of photos to display...
    return 1000;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_CKPhotoPickerCollectionViewController = objc_getClass("CKPhotoPickerCollectionViewController");
    MSHookMessageEx(_ftt_class_CKPhotoPickerCollectionViewController, @selector(maxAssetsToDisplay), (IMP)_patched_ftt_meth_$CKPhotoPickerCollectionViewController$maxAssetsToDisplay, NULL);
}
