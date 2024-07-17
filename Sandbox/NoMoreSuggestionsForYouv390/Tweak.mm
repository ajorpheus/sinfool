#import <UIKit/UIKit.h>

#include <substrate.h>

static long long _patched_ftt_meth_$IGHScrollAYMFSectionController$numberOfItems(id self, SEL _cmd) {
    return 0;
}

static long long _patched_ftt_meth_$IGProfileAYMFSectionController$numberOfItems(id self, SEL _cmd) {
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_IGHScrollAYMFSectionController = objc_getClass("IGHScrollAYMFSectionController");
    MSHookMessageEx(_ftt_class_IGHScrollAYMFSectionController, @selector(numberOfItems), (IMP)_patched_ftt_meth_$IGHScrollAYMFSectionController$numberOfItems, NULL);
    Class _ftt_class_IGProfileAYMFSectionController = objc_getClass("IGProfileAYMFSectionController");
    MSHookMessageEx(_ftt_class_IGProfileAYMFSectionController, @selector(numberOfItems), (IMP)_patched_ftt_meth_$IGProfileAYMFSectionController$numberOfItems, NULL);
}
