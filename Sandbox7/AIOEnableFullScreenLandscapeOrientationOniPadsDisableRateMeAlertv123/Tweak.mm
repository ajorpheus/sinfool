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

@class iRate; @class UIViewController; @class UIApplication; 
static void (*_logos_orig$_ungrouped$UIApplication$_setClassicMode$)(_LOGOS_SELF_TYPE_NORMAL UIApplication* _LOGOS_SELF_CONST, SEL, long long); static void _logos_method$_ungrouped$UIApplication$_setClassicMode$(_LOGOS_SELF_TYPE_NORMAL UIApplication* _LOGOS_SELF_CONST, SEL, long long); static bool (*_logos_orig$_ungrouped$UIViewController$_ignoreAppSupportedOrientations)(_LOGOS_SELF_TYPE_NORMAL UIViewController* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$UIViewController$_ignoreAppSupportedOrientations(_LOGOS_SELF_TYPE_NORMAL UIViewController* _LOGOS_SELF_CONST, SEL); static bool (*_logos_orig$_ungrouped$iRate$ratedAnyVersion)(_LOGOS_SELF_TYPE_NORMAL iRate* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$iRate$ratedAnyVersion(_LOGOS_SELF_TYPE_NORMAL iRate* _LOGOS_SELF_CONST, SEL); 

#line 3 "Tweak.xm"

static void _logos_method$_ungrouped$UIApplication$_setClassicMode$(_LOGOS_SELF_TYPE_NORMAL UIApplication* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, long long arg1) {
    arg1 = 0;
    _logos_orig$_ungrouped$UIApplication$_setClassicMode$(self, _cmd, arg1);
}



static bool _logos_method$_ungrouped$UIViewController$_ignoreAppSupportedOrientations(_LOGOS_SELF_TYPE_NORMAL UIViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 1;
}



static bool _logos_method$_ungrouped$iRate$ratedAnyVersion(_LOGOS_SELF_TYPE_NORMAL iRate* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 1;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$UIApplication = objc_getClass("UIApplication"); { MSHookMessageEx(_logos_class$_ungrouped$UIApplication, @selector(_setClassicMode:), (IMP)&_logos_method$_ungrouped$UIApplication$_setClassicMode$, (IMP*)&_logos_orig$_ungrouped$UIApplication$_setClassicMode$);}Class _logos_class$_ungrouped$UIViewController = objc_getClass("UIViewController"); { MSHookMessageEx(_logos_class$_ungrouped$UIViewController, @selector(_ignoreAppSupportedOrientations), (IMP)&_logos_method$_ungrouped$UIViewController$_ignoreAppSupportedOrientations, (IMP*)&_logos_orig$_ungrouped$UIViewController$_ignoreAppSupportedOrientations);}Class _logos_class$_ungrouped$iRate = objc_getClass("iRate"); { MSHookMessageEx(_logos_class$_ungrouped$iRate, @selector(ratedAnyVersion), (IMP)&_logos_method$_ungrouped$iRate$ratedAnyVersion, (IMP*)&_logos_orig$_ungrouped$iRate$ratedAnyVersion);}} }
#line 22 "Tweak.xm"
