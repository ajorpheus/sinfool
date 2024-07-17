#import <UIKit/UIKit.h>

#include <substrate.h>

static double _patched_ftt_meth_$SBNCTableViewController$tableView$heightForHeaderInSection$(id self, SEL _cmd, id arg1, long long arg2) {
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBNCTableViewController = objc_getClass("SBNCTableViewController");
    MSHookMessageEx(_ftt_class_SBNCTableViewController, @selector(tableView:heightForHeaderInSection:), (IMP)_patched_ftt_meth_$SBNCTableViewController$tableView$heightForHeaderInSection$, NULL);
}
