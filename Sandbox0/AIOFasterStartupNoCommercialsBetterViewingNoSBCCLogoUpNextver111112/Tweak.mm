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

@class UIStatusBarForegroundView; @class FWAd; @class CCSUSplashViewController; 
static void (*_logos_orig$_ungrouped$CCSUSplashViewController$dismissSplashScreenAfterDelay$)(_LOGOS_SELF_TYPE_NORMAL CCSUSplashViewController* _LOGOS_SELF_CONST, SEL, double); static void _logos_method$_ungrouped$CCSUSplashViewController$dismissSplashScreenAfterDelay$(_LOGOS_SELF_TYPE_NORMAL CCSUSplashViewController* _LOGOS_SELF_CONST, SEL, double); static unsigned int (*_logos_orig$_ungrouped$FWAd$adId)(_LOGOS_SELF_TYPE_NORMAL FWAd* _LOGOS_SELF_CONST, SEL); static unsigned int _logos_method$_ungrouped$FWAd$adId(_LOGOS_SELF_TYPE_NORMAL FWAd* _LOGOS_SELF_CONST, SEL); static UIStatusBarForegroundView* (*_logos_orig$_ungrouped$UIStatusBarForegroundView$initWithFrame$foregroundStyle$usesVerticalLayout$)(_LOGOS_SELF_TYPE_INIT UIStatusBarForegroundView*, SEL, CGRect, id, bool) _LOGOS_RETURN_RETAINED; static UIStatusBarForegroundView* _logos_method$_ungrouped$UIStatusBarForegroundView$initWithFrame$foregroundStyle$usesVerticalLayout$(_LOGOS_SELF_TYPE_INIT UIStatusBarForegroundView*, SEL, CGRect, id, bool) _LOGOS_RETURN_RETAINED; 

#line 3 "Tweak.xm"

static void _logos_method$_ungrouped$CCSUSplashViewController$dismissSplashScreenAfterDelay$(_LOGOS_SELF_TYPE_NORMAL CCSUSplashViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, double arg1) {
    arg1 = 0;
    _logos_orig$_ungrouped$CCSUSplashViewController$dismissSplashScreenAfterDelay$(self, _cmd, arg1);
}



static unsigned int _logos_method$_ungrouped$FWAd$adId(_LOGOS_SELF_TYPE_NORMAL FWAd* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 0;
}



static UIStatusBarForegroundView* _logos_method$_ungrouped$UIStatusBarForegroundView$initWithFrame$foregroundStyle$usesVerticalLayout$(_LOGOS_SELF_TYPE_INIT UIStatusBarForegroundView* __unused self, SEL __unused _cmd, CGRect arg1, id arg2, bool arg3) _LOGOS_RETURN_RETAINED {
    return NULL;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$CCSUSplashViewController = objc_getClass("CCSUSplashViewController"); { MSHookMessageEx(_logos_class$_ungrouped$CCSUSplashViewController, @selector(dismissSplashScreenAfterDelay:), (IMP)&_logos_method$_ungrouped$CCSUSplashViewController$dismissSplashScreenAfterDelay$, (IMP*)&_logos_orig$_ungrouped$CCSUSplashViewController$dismissSplashScreenAfterDelay$);}Class _logos_class$_ungrouped$FWAd = objc_getClass("FWAd"); { MSHookMessageEx(_logos_class$_ungrouped$FWAd, @selector(adId), (IMP)&_logos_method$_ungrouped$FWAd$adId, (IMP*)&_logos_orig$_ungrouped$FWAd$adId);}Class _logos_class$_ungrouped$UIStatusBarForegroundView = objc_getClass("UIStatusBarForegroundView"); { MSHookMessageEx(_logos_class$_ungrouped$UIStatusBarForegroundView, @selector(initWithFrame:foregroundStyle:usesVerticalLayout:), (IMP)&_logos_method$_ungrouped$UIStatusBarForegroundView$initWithFrame$foregroundStyle$usesVerticalLayout$, (IMP*)&_logos_orig$_ungrouped$UIStatusBarForegroundView$initWithFrame$foregroundStyle$usesVerticalLayout$);}} }
#line 22 "Tweak.xm"
