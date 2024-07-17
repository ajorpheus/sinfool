#import <UIKit/UIKit.h>

#include <substrate.h>

static double _patched_ftt_meth_$MFMailboxTableView$_destructiveConfirmationPoint(id self, SEL _cmd) {
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_MFMailboxTableView = objc_getClass("MFMailboxTableView");
    MSHookMessageEx(_ftt_class_MFMailboxTableView, @selector(_destructiveConfirmationPoint), (IMP)_patched_ftt_meth_$MFMailboxTableView$_destructiveConfirmationPoint, NULL);
}
