#import <UIKit/UIKit.h>

#include <substrate.h>

static id _patched_ftt_meth_$CKTranscriptGroupHeaderView$initWithFrame$conversation$(id self, SEL _cmd, CGRect arg1, id arg2) {
    // •
    return NULL;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_CKTranscriptGroupHeaderView = objc_getClass("CKTranscriptGroupHeaderView");
    MSHookMessageEx(_ftt_class_CKTranscriptGroupHeaderView, @selector(initWithFrame:conversation:), (IMP)_patched_ftt_meth_$CKTranscriptGroupHeaderView$initWithFrame$conversation$, NULL);
}
