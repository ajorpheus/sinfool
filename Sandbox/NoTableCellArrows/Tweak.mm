#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$CKConversationListCellLayout$setShouldShowChevron$)(id, SEL, bool);
static void _patched_ftt_meth_$CKConversationListCellLayout$setShouldShowChevron$(id self, SEL _cmd, bool arg1) {
    arg1 = 0;
    _orig_ftt_meth_$CKConversationListCellLayout$setShouldShowChevron$(self, _cmd, arg1);
}

static bool _patched_ftt_meth_$CKConversationListCellLayout$shouldShowChevron(id self, SEL _cmd) {
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_CKConversationListCellLayout = objc_getClass("CKConversationListCellLayout");
    MSHookMessageEx(_ftt_class_CKConversationListCellLayout, @selector(setShouldShowChevron:), (IMP)_patched_ftt_meth_$CKConversationListCellLayout$setShouldShowChevron$, (IMP *)_orig_ftt_meth_$CKConversationListCellLayout$setShouldShowChevron$);
    MSHookMessageEx(_ftt_class_CKConversationListCellLayout, @selector(shouldShowChevron), (IMP)_patched_ftt_meth_$CKConversationListCellLayout$shouldShowChevron, NULL);
}
