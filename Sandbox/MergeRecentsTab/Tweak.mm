#import <UIKit/UIKit.h>

#include <substrate.h>

static unsigned long long _patched_ftt_meth_$UISegmentedControl$numberOfSegments(id self, SEL _cmd) {
    return 0;
}

static bool _patched_ftt_meth_$MPRecentsTableViewController$requiresNavigationControllerContainer(id self, SEL _cmd) {
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_UISegmentedControl = objc_getClass("UISegmentedControl");
    MSHookMessageEx(_ftt_class_UISegmentedControl, @selector(numberOfSegments), (IMP)_patched_ftt_meth_$UISegmentedControl$numberOfSegments, NULL);
    Class _ftt_class_MPRecentsTableViewController = objc_getClass("MPRecentsTableViewController");
    MSHookMessageEx(_ftt_class_MPRecentsTableViewController, @selector(requiresNavigationControllerContainer), (IMP)_patched_ftt_meth_$MPRecentsTableViewController$requiresNavigationControllerContainer, NULL);
}
