#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$CKMessagesController$showNewMessageCompositionPanelWithRecipients$composition$animated$)(id, SEL, id, id, bool);
static void _patched_ftt_meth_$CKMessagesController$showNewMessageCompositionPanelWithRecipients$composition$animated$(id self, SEL _cmd, id arg1, id arg2, bool arg3) {
    arg3 = 0;
    _orig_ftt_meth_$CKMessagesController$showNewMessageCompositionPanelWithRecipients$composition$animated$(self, _cmd, arg1, arg2, arg3);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_CKMessagesController = objc_getClass("CKMessagesController");
    MSHookMessageEx(_ftt_class_CKMessagesController, @selector(showNewMessageCompositionPanelWithRecipients:composition:animated:), (IMP)_patched_ftt_meth_$CKMessagesController$showNewMessageCompositionPanelWithRecipients$composition$animated$, (IMP *)_orig_ftt_meth_$CKMessagesController$showNewMessageCompositionPanelWithRecipients$composition$animated$);
}
