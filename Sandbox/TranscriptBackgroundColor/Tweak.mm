#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$CKTranscriptCollectionView$setBackgroundColor$)(id, SEL, id);
static void _patched_ftt_meth_$CKTranscriptCollectionView$setBackgroundColor$(id self, SEL _cmd, id arg1) {
    // Set Color...
    arg1 = [UIColor colorWithRed:34/255.0 green:34/255.0 blue:34/255.0 alpha:255/255.0];
    _orig_ftt_meth_$CKTranscriptCollectionView$setBackgroundColor$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_CKTranscriptCollectionView = objc_getClass("CKTranscriptCollectionView");
    MSHookMessageEx(_ftt_class_CKTranscriptCollectionView, @selector(setBackgroundColor:), (IMP)_patched_ftt_meth_$CKTranscriptCollectionView$setBackgroundColor$, (IMP *)_orig_ftt_meth_$CKTranscriptCollectionView$setBackgroundColor$);
}
