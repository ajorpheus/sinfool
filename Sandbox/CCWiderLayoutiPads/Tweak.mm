#import <UIKit/UIKit.h>

#include <substrate.h>

static long long _patched_ftt_meth_$CCUIControlCenterViewController$_currentOrientation(id self, SEL _cmd) {
    return 1;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_CCUIControlCenterViewController = objc_getClass("CCUIControlCenterViewController");
    MSHookMessageEx(_ftt_class_CCUIControlCenterViewController, @selector(_currentOrientation), (IMP)_patched_ftt_meth_$CCUIControlCenterViewController$_currentOrientation, NULL);
}
