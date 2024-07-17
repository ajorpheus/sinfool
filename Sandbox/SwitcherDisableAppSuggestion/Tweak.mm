#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$SBMainSwitcherViewController$_isBestAppSuggestionEligibleForSwitcher$(id self, SEL _cmd, id arg1) {
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBMainSwitcherViewController = objc_getClass("SBMainSwitcherViewController");
    MSHookMessageEx(_ftt_class_SBMainSwitcherViewController, @selector(_isBestAppSuggestionEligibleForSwitcher:), (IMP)_patched_ftt_meth_$SBMainSwitcherViewController$_isBestAppSuggestionEligibleForSwitcher$, NULL);
}
