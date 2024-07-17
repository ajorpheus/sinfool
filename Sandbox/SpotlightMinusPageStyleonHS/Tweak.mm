#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$SPUISearchViewController$_showKeyboardOnPresentation(id self, SEL _cmd) {
    // Show Keyboard On Presentation
    return 0;
}

static double _patched_ftt_meth_$SPUISearchViewController$clearSearchTimeInterval(id self, SEL _cmd) {
    // Seconds Before Clearing Search On Dismiss
    return 0;
}

static bool _patched_ftt_meth_$SPUISearchViewController$_isPullDownSpotlight(id self, SEL _cmd) {
    return 0;
}

static bool _patched_ftt_meth_$SBSpotlightSettings$enableSpotlightOnMinusPage(id self, SEL _cmd) {
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SPUISearchViewController = objc_getClass("SPUISearchViewController");
    MSHookMessageEx(_ftt_class_SPUISearchViewController, @selector(_showKeyboardOnPresentation), (IMP)_patched_ftt_meth_$SPUISearchViewController$_showKeyboardOnPresentation, NULL);
    MSHookMessageEx(_ftt_class_SPUISearchViewController, @selector(clearSearchTimeInterval), (IMP)_patched_ftt_meth_$SPUISearchViewController$clearSearchTimeInterval, NULL);
    MSHookMessageEx(_ftt_class_SPUISearchViewController, @selector(_isPullDownSpotlight), (IMP)_patched_ftt_meth_$SPUISearchViewController$_isPullDownSpotlight, NULL);
    Class _ftt_class_SBSpotlightSettings = objc_getClass("SBSpotlightSettings");
    MSHookMessageEx(_ftt_class_SBSpotlightSettings, @selector(enableSpotlightOnMinusPage), (IMP)_patched_ftt_meth_$SBSpotlightSettings$enableSpotlightOnMinusPage, NULL);
}
