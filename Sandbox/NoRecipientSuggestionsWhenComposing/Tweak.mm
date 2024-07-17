#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$CKComposeRecipientSelectionController$shouldSuppressSearchResultsTable(id self, SEL _cmd) {
    return 1;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_CKComposeRecipientSelectionController = objc_getClass("CKComposeRecipientSelectionController");
    MSHookMessageEx(_ftt_class_CKComposeRecipientSelectionController, @selector(shouldSuppressSearchResultsTable), (IMP)_patched_ftt_meth_$CKComposeRecipientSelectionController$shouldSuppressSearchResultsTable, NULL);
}
