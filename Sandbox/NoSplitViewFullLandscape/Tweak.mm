#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$UISplitViewController$_isBasicallyHorizontallyCompact(id self, SEL _cmd) {
    return 1;
}

static bool _patched_ftt_meth_$UISplitViewController$isCollapsed(id self, SEL _cmd) {
    return 1;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_UISplitViewController = objc_getClass("UISplitViewController");
    MSHookMessageEx(_ftt_class_UISplitViewController, @selector(_isBasicallyHorizontallyCompact), (IMP)_patched_ftt_meth_$UISplitViewController$_isBasicallyHorizontallyCompact, NULL);
    MSHookMessageEx(_ftt_class_UISplitViewController, @selector(isCollapsed), (IMP)_patched_ftt_meth_$UISplitViewController$isCollapsed, NULL);
}
