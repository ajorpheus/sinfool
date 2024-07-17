#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$CKConversation$setLoadedMessageCount$)(id, SEL, unsigned long long);
static void _patched_ftt_meth_$CKConversation$setLoadedMessageCount$(id self, SEL _cmd, unsigned long long arg1) {
    // Set # of Messages to Load
    arg1 = 1000;
    _orig_ftt_meth_$CKConversation$setLoadedMessageCount$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_CKConversation = objc_getClass("CKConversation");
    MSHookMessageEx(_ftt_class_CKConversation, @selector(setLoadedMessageCount:), (IMP)_patched_ftt_meth_$CKConversation$setLoadedMessageCount$, (IMP *)_orig_ftt_meth_$CKConversation$setLoadedMessageCount$);
}
