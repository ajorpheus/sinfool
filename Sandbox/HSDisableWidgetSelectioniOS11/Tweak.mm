#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$SBHomeScreenTodayViewController$isWidgetExtensionWithIdentifierVisible$(id self, SEL _cmd, id arg1) {
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBHomeScreenTodayViewController = objc_getClass("SBHomeScreenTodayViewController");
    MSHookMessageEx(_ftt_class_SBHomeScreenTodayViewController, @selector(isWidgetExtensionWithIdentifierVisible:), (IMP)_patched_ftt_meth_$SBHomeScreenTodayViewController$isWidgetExtensionWithIdentifierVisible$, NULL);
}
