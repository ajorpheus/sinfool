#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$CKTextMessagePartChatItem$containsHyperlink(id self, SEL _cmd) {
    // •
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_CKTextMessagePartChatItem = objc_getClass("CKTextMessagePartChatItem");
    MSHookMessageEx(_ftt_class_CKTextMessagePartChatItem, @selector(containsHyperlink), (IMP)_patched_ftt_meth_$CKTextMessagePartChatItem$containsHyperlink, NULL);
}
