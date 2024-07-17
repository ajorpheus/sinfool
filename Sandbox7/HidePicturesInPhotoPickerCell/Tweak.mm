#line 1 "Tweak.xm"
#import <UIKit/UIKit.h>


#include <substrate.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

asm(".linker_option \"-framework\", \"CydiaSubstrate\"");

@class CKPhotoPickerController; 
static id (*_logos_orig$_ungrouped$CKPhotoPickerController$photosCollectionView)(_LOGOS_SELF_TYPE_NORMAL CKPhotoPickerController* _LOGOS_SELF_CONST, SEL); static id _logos_method$_ungrouped$CKPhotoPickerController$photosCollectionView(_LOGOS_SELF_TYPE_NORMAL CKPhotoPickerController* _LOGOS_SELF_CONST, SEL); 

#line 3 "Tweak.xm"

static id _logos_method$_ungrouped$CKPhotoPickerController$photosCollectionView(_LOGOS_SELF_TYPE_NORMAL CKPhotoPickerController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return NULL;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$CKPhotoPickerController = objc_getClass("CKPhotoPickerController"); { MSHookMessageEx(_logos_class$_ungrouped$CKPhotoPickerController, @selector(photosCollectionView), (IMP)&_logos_method$_ungrouped$CKPhotoPickerController$photosCollectionView, (IMP*)&_logos_orig$_ungrouped$CKPhotoPickerController$photosCollectionView);}} }
#line 9 "Tweak.xm"
