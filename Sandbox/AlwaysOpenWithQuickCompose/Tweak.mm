#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$CKConversationList$hasActiveConversations(id self, SEL _cmd) {
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_CKConversationList = objc_getClass("CKConversationList");
    MSHookMessageEx(_ftt_class_CKConversationList, @selector(hasActiveConversations), (IMP)_patched_ftt_meth_$CKConversationList$hasActiveConversations, NULL);
}
