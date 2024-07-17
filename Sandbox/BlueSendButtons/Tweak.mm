#import <UIKit/UIKit.h>

#include <substrate.h>

static BOOL _patched_ftt_meth_$CKConversation$sendButtonColor(id self, SEL _cmd) {
    // Send Button
    return 1;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_CKConversation = objc_getClass("CKConversation");
    MSHookMessageEx(_ftt_class_CKConversation, @selector(sendButtonColor), (IMP)_patched_ftt_meth_$CKConversation$sendButtonColor, NULL);
}
