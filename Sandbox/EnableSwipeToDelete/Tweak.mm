#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$UITableView$_hasSwipeToDeleteRow(id self, SEL _cmd) {
    // •
    return 1;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_UITableView = objc_getClass("UITableView");
    MSHookMessageEx(_ftt_class_UITableView, @selector(_hasSwipeToDeleteRow), (IMP)_patched_ftt_meth_$UITableView$_hasSwipeToDeleteRow, NULL);
}
