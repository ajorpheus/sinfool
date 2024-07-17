#import <UIKit/UIKit.h>

#include <substrate.h>

static id _patched_ftt_meth_$CKConversationListController$searchController(id self, SEL _cmd) {
    // •
    return NULL;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_CKConversationListController = objc_getClass("CKConversationListController");
    MSHookMessageEx(_ftt_class_CKConversationListController, @selector(searchController), (IMP)_patched_ftt_meth_$CKConversationListController$searchController, NULL);
}
