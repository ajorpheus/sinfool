#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$CKPhotoPickerSheetViewController$_sendSelectedAssets$)(id, SEL, bool);
static void _patched_ftt_meth_$CKPhotoPickerSheetViewController$_sendSelectedAssets$(id self, SEL _cmd, bool arg1) {
    // •
    arg1 = 0;
    _orig_ftt_meth_$CKPhotoPickerSheetViewController$_sendSelectedAssets$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$CKTranscriptController$photoPickerController$requestsSendAssets$sendImmediately$)(id, SEL, id, id, bool);
static void _patched_ftt_meth_$CKTranscriptController$photoPickerController$requestsSendAssets$sendImmediately$(id self, SEL _cmd, id arg1, id arg2, bool arg3) {
    // •
    arg3 = 0;
    _orig_ftt_meth_$CKTranscriptController$photoPickerController$requestsSendAssets$sendImmediately$(self, _cmd, arg1, arg2, arg3);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_CKPhotoPickerSheetViewController = objc_getClass("CKPhotoPickerSheetViewController");
    MSHookMessageEx(_ftt_class_CKPhotoPickerSheetViewController, @selector(_sendSelectedAssets:), (IMP)_patched_ftt_meth_$CKPhotoPickerSheetViewController$_sendSelectedAssets$, (IMP *)_orig_ftt_meth_$CKPhotoPickerSheetViewController$_sendSelectedAssets$);
    Class _ftt_class_CKTranscriptController = objc_getClass("CKTranscriptController");
    MSHookMessageEx(_ftt_class_CKTranscriptController, @selector(photoPickerController:requestsSendAssets:sendImmediately:), (IMP)_patched_ftt_meth_$CKTranscriptController$photoPickerController$requestsSendAssets$sendImmediately$, (IMP *)_orig_ftt_meth_$CKTranscriptController$photoPickerController$requestsSendAssets$sendImmediately$);
}
