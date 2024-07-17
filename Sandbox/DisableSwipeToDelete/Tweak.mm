#import <UIKit/UIKit.h>

#include <substrate.h>

static id _patched_ftt_meth_$UITableView$_indexPathForSwipeRowAtPoint$(id self, SEL _cmd, CGPoint arg1) {
    return NULL;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_UITableView = objc_getClass("UITableView");
    MSHookMessageEx(_ftt_class_UITableView, @selector(_indexPathForSwipeRowAtPoint:), (IMP)_patched_ftt_meth_$UITableView$_indexPathForSwipeRowAtPoint$, NULL);
}
