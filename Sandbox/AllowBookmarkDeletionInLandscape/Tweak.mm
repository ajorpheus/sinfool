#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$BookmarksNavigationController$allowsEditing(id self, SEL _cmd) {
    return 1;
}

static void (*_orig_ftt_meth_$BookmarksNavigationController$setAllowsEditing$)(id, SEL, bool);
static void _patched_ftt_meth_$BookmarksNavigationController$setAllowsEditing$(id self, SEL _cmd, bool arg1) {
    arg1 = 1;
    _orig_ftt_meth_$BookmarksNavigationController$setAllowsEditing$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_BookmarksNavigationController = objc_getClass("BookmarksNavigationController");
    MSHookMessageEx(_ftt_class_BookmarksNavigationController, @selector(allowsEditing), (IMP)_patched_ftt_meth_$BookmarksNavigationController$allowsEditing, NULL);
    MSHookMessageEx(_ftt_class_BookmarksNavigationController, @selector(setAllowsEditing:), (IMP)_patched_ftt_meth_$BookmarksNavigationController$setAllowsEditing$, (IMP *)_orig_ftt_meth_$BookmarksNavigationController$setAllowsEditing$);
}
