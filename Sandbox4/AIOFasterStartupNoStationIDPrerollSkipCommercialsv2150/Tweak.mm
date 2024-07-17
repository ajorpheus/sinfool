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

@class DSMLinearVideoAdsProvider; @class CWSplashScreenStaticImage; 
static void (*_logos_orig$_ungrouped$CWSplashScreenStaticImage$setIsSplashVideo$)(_LOGOS_SELF_TYPE_NORMAL CWSplashScreenStaticImage* _LOGOS_SELF_CONST, SEL, bool); static void _logos_method$_ungrouped$CWSplashScreenStaticImage$setIsSplashVideo$(_LOGOS_SELF_TYPE_NORMAL CWSplashScreenStaticImage* _LOGOS_SELF_CONST, SEL, bool); static void (*_logos_orig$_ungrouped$DSMLinearVideoAdsProvider$setEnabled$)(_LOGOS_SELF_TYPE_NORMAL DSMLinearVideoAdsProvider* _LOGOS_SELF_CONST, SEL, bool); static void _logos_method$_ungrouped$DSMLinearVideoAdsProvider$setEnabled$(_LOGOS_SELF_TYPE_NORMAL DSMLinearVideoAdsProvider* _LOGOS_SELF_CONST, SEL, bool); 

#line 3 "Tweak.xm"

static void _logos_method$_ungrouped$CWSplashScreenStaticImage$setIsSplashVideo$(_LOGOS_SELF_TYPE_NORMAL CWSplashScreenStaticImage* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, bool arg1) {
    arg1 = 0;
    _logos_orig$_ungrouped$CWSplashScreenStaticImage$setIsSplashVideo$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$DSMLinearVideoAdsProvider$setEnabled$(_LOGOS_SELF_TYPE_NORMAL DSMLinearVideoAdsProvider* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, bool arg1) {
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$CWSplashScreenStaticImage = objc_getClass("CWSplashScreenStaticImage"); { MSHookMessageEx(_logos_class$_ungrouped$CWSplashScreenStaticImage, @selector(setIsSplashVideo:), (IMP)&_logos_method$_ungrouped$CWSplashScreenStaticImage$setIsSplashVideo$, (IMP*)&_logos_orig$_ungrouped$CWSplashScreenStaticImage$setIsSplashVideo$);}Class _logos_class$_ungrouped$DSMLinearVideoAdsProvider = objc_getClass("DSMLinearVideoAdsProvider"); { MSHookMessageEx(_logos_class$_ungrouped$DSMLinearVideoAdsProvider, @selector(setEnabled:), (IMP)&_logos_method$_ungrouped$DSMLinearVideoAdsProvider$setEnabled$, (IMP*)&_logos_orig$_ungrouped$DSMLinearVideoAdsProvider$setEnabled$);}} }
#line 15 "Tweak.xm"
