#import <UIKit/UIKit.h>

#include <substrate.h>

static id _patched_ftt_meth_$CKDateChatItem$loadTranscriptText(id self, SEL _cmd) {
    // Time Stamps
    return NULL;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_CKDateChatItem = objc_getClass("CKDateChatItem");
    MSHookMessageEx(_ftt_class_CKDateChatItem, @selector(loadTranscriptText), (IMP)_patched_ftt_meth_$CKDateChatItem$loadTranscriptText, NULL);
}
