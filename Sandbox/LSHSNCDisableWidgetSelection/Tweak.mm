#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$SBSearchEtceteraIsolatedViewController$_todayViewIsVisible(id self, SEL _cmd) {
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBSearchEtceteraIsolatedViewController = objc_getClass("SBSearchEtceteraIsolatedViewController");
    MSHookMessageEx(_ftt_class_SBSearchEtceteraIsolatedViewController, @selector(_todayViewIsVisible), (IMP)_patched_ftt_meth_$SBSearchEtceteraIsolatedViewController$_todayViewIsVisible, NULL);
}
