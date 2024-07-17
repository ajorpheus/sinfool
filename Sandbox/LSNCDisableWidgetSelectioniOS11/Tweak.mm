#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$SBDashBoardViewController$isWidgetExtensionWithIdentifierVisible$(id self, SEL _cmd, id arg1) {
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBDashBoardViewController = objc_getClass("SBDashBoardViewController");
    MSHookMessageEx(_ftt_class_SBDashBoardViewController, @selector(isWidgetExtensionWithIdentifierVisible:), (IMP)_patched_ftt_meth_$SBDashBoardViewController$isWidgetExtensionWithIdentifierVisible$, NULL);
}
