#line 1 "Tweak.xm"
#import <UIKit/UIKit.h>


#include <substrate.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

asm(".linker_option \"-framework\", \"CydiaSubstrate\"");

@class SPUISearchViewController; @class SBSpotlightSettings; 
static bool (*_logos_orig$_ungrouped$SPUISearchViewController$_showKeyboardOnPresentation)(_LOGOS_SELF_TYPE_NORMAL SPUISearchViewController* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$SPUISearchViewController$_showKeyboardOnPresentation(_LOGOS_SELF_TYPE_NORMAL SPUISearchViewController* _LOGOS_SELF_CONST, SEL); static double (*_logos_orig$_ungrouped$SPUISearchViewController$clearSearchTimeInterval)(_LOGOS_SELF_TYPE_NORMAL SPUISearchViewController* _LOGOS_SELF_CONST, SEL); static double _logos_method$_ungrouped$SPUISearchViewController$clearSearchTimeInterval(_LOGOS_SELF_TYPE_NORMAL SPUISearchViewController* _LOGOS_SELF_CONST, SEL); static bool (*_logos_orig$_ungrouped$SPUISearchViewController$_isPullDownSpotlight)(_LOGOS_SELF_TYPE_NORMAL SPUISearchViewController* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$SPUISearchViewController$_isPullDownSpotlight(_LOGOS_SELF_TYPE_NORMAL SPUISearchViewController* _LOGOS_SELF_CONST, SEL); static bool (*_logos_orig$_ungrouped$SBSpotlightSettings$enableSpotlightOnMinusPage)(_LOGOS_SELF_TYPE_NORMAL SBSpotlightSettings* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$SBSpotlightSettings$enableSpotlightOnMinusPage(_LOGOS_SELF_TYPE_NORMAL SBSpotlightSettings* _LOGOS_SELF_CONST, SEL); 

#line 3 "Tweak.xm"

static bool _logos_method$_ungrouped$SPUISearchViewController$_showKeyboardOnPresentation(_LOGOS_SELF_TYPE_NORMAL SPUISearchViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 0;
}



static double _logos_method$_ungrouped$SPUISearchViewController$clearSearchTimeInterval(_LOGOS_SELF_TYPE_NORMAL SPUISearchViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 0;
}



static bool _logos_method$_ungrouped$SPUISearchViewController$_isPullDownSpotlight(_LOGOS_SELF_TYPE_NORMAL SPUISearchViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 0;
}



static bool _logos_method$_ungrouped$SBSpotlightSettings$enableSpotlightOnMinusPage(_LOGOS_SELF_TYPE_NORMAL SBSpotlightSettings* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 0;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$SPUISearchViewController = objc_getClass("SPUISearchViewController"); { MSHookMessageEx(_logos_class$_ungrouped$SPUISearchViewController, @selector(_showKeyboardOnPresentation), (IMP)&_logos_method$_ungrouped$SPUISearchViewController$_showKeyboardOnPresentation, (IMP*)&_logos_orig$_ungrouped$SPUISearchViewController$_showKeyboardOnPresentation);}{ MSHookMessageEx(_logos_class$_ungrouped$SPUISearchViewController, @selector(clearSearchTimeInterval), (IMP)&_logos_method$_ungrouped$SPUISearchViewController$clearSearchTimeInterval, (IMP*)&_logos_orig$_ungrouped$SPUISearchViewController$clearSearchTimeInterval);}{ MSHookMessageEx(_logos_class$_ungrouped$SPUISearchViewController, @selector(_isPullDownSpotlight), (IMP)&_logos_method$_ungrouped$SPUISearchViewController$_isPullDownSpotlight, (IMP*)&_logos_orig$_ungrouped$SPUISearchViewController$_isPullDownSpotlight);}Class _logos_class$_ungrouped$SBSpotlightSettings = objc_getClass("SBSpotlightSettings"); { MSHookMessageEx(_logos_class$_ungrouped$SBSpotlightSettings, @selector(enableSpotlightOnMinusPage), (IMP)&_logos_method$_ungrouped$SBSpotlightSettings$enableSpotlightOnMinusPage, (IMP*)&_logos_orig$_ungrouped$SBSpotlightSettings$enableSpotlightOnMinusPage);}} }
#line 29 "Tweak.xm"
