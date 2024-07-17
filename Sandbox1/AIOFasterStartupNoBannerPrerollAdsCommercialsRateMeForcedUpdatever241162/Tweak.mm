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

@class GADBannerView; @class CWSplashScreenStaticImage; @class DSMLinearVideoAdsManager; @class PWAppConfiguration; @class GADAdFetcher; 
static CWSplashScreenStaticImage* (*_logos_orig$_ungrouped$CWSplashScreenStaticImage$initRemoteImageWithDuration$)(_LOGOS_SELF_TYPE_INIT CWSplashScreenStaticImage*, SEL, unsigned long long) _LOGOS_RETURN_RETAINED; static CWSplashScreenStaticImage* _logos_method$_ungrouped$CWSplashScreenStaticImage$initRemoteImageWithDuration$(_LOGOS_SELF_TYPE_INIT CWSplashScreenStaticImage*, SEL, unsigned long long) _LOGOS_RETURN_RETAINED; static id (*_logos_orig$_ungrouped$DSMLinearVideoAdsManager$providerPrePodPromo)(_LOGOS_SELF_TYPE_NORMAL DSMLinearVideoAdsManager* _LOGOS_SELF_CONST, SEL); static id _logos_method$_ungrouped$DSMLinearVideoAdsManager$providerPrePodPromo(_LOGOS_SELF_TYPE_NORMAL DSMLinearVideoAdsManager* _LOGOS_SELF_CONST, SEL); static bool (*_logos_orig$_ungrouped$DSMLinearVideoAdsManager$enabled)(_LOGOS_SELF_TYPE_NORMAL DSMLinearVideoAdsManager* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$DSMLinearVideoAdsManager$enabled(_LOGOS_SELF_TYPE_NORMAL DSMLinearVideoAdsManager* _LOGOS_SELF_CONST, SEL); static GADAdFetcher* (*_logos_orig$_ungrouped$GADAdFetcher$init)(_LOGOS_SELF_TYPE_INIT GADAdFetcher*, SEL) _LOGOS_RETURN_RETAINED; static GADAdFetcher* _logos_method$_ungrouped$GADAdFetcher$init(_LOGOS_SELF_TYPE_INIT GADAdFetcher*, SEL) _LOGOS_RETURN_RETAINED; static id (*_logos_orig$_ungrouped$GADBannerView$slot)(_LOGOS_SELF_TYPE_NORMAL GADBannerView* _LOGOS_SELF_CONST, SEL); static id _logos_method$_ungrouped$GADBannerView$slot(_LOGOS_SELF_TYPE_NORMAL GADBannerView* _LOGOS_SELF_CONST, SEL); static bool (*_logos_orig$_ungrouped$PWAppConfiguration$isForceUpgradeEnabled)(_LOGOS_SELF_TYPE_NORMAL PWAppConfiguration* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$PWAppConfiguration$isForceUpgradeEnabled(_LOGOS_SELF_TYPE_NORMAL PWAppConfiguration* _LOGOS_SELF_CONST, SEL); static bool (*_logos_orig$_ungrouped$PWAppConfiguration$isRatingsEnabled)(_LOGOS_SELF_TYPE_NORMAL PWAppConfiguration* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$PWAppConfiguration$isRatingsEnabled(_LOGOS_SELF_TYPE_NORMAL PWAppConfiguration* _LOGOS_SELF_CONST, SEL); 

#line 3 "Tweak.xm"

static CWSplashScreenStaticImage* _logos_method$_ungrouped$CWSplashScreenStaticImage$initRemoteImageWithDuration$(_LOGOS_SELF_TYPE_INIT CWSplashScreenStaticImage* __unused self, SEL __unused _cmd, unsigned long long arg1) _LOGOS_RETURN_RETAINED {
    arg1 = 0;
    return _logos_orig$_ungrouped$CWSplashScreenStaticImage$initRemoteImageWithDuration$(self, _cmd, arg1);
}



static id _logos_method$_ungrouped$DSMLinearVideoAdsManager$providerPrePodPromo(_LOGOS_SELF_TYPE_NORMAL DSMLinearVideoAdsManager* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return NULL;
}



static bool _logos_method$_ungrouped$DSMLinearVideoAdsManager$enabled(_LOGOS_SELF_TYPE_NORMAL DSMLinearVideoAdsManager* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 0;
}



static GADAdFetcher* _logos_method$_ungrouped$GADAdFetcher$init(_LOGOS_SELF_TYPE_INIT GADAdFetcher* __unused self, SEL __unused _cmd) _LOGOS_RETURN_RETAINED {
    return NULL;
}



static id _logos_method$_ungrouped$GADBannerView$slot(_LOGOS_SELF_TYPE_NORMAL GADBannerView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return NULL;
}



static bool _logos_method$_ungrouped$PWAppConfiguration$isForceUpgradeEnabled(_LOGOS_SELF_TYPE_NORMAL PWAppConfiguration* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 0;
}



static bool _logos_method$_ungrouped$PWAppConfiguration$isRatingsEnabled(_LOGOS_SELF_TYPE_NORMAL PWAppConfiguration* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 0;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$CWSplashScreenStaticImage = objc_getClass("CWSplashScreenStaticImage"); { MSHookMessageEx(_logos_class$_ungrouped$CWSplashScreenStaticImage, @selector(initRemoteImageWithDuration:), (IMP)&_logos_method$_ungrouped$CWSplashScreenStaticImage$initRemoteImageWithDuration$, (IMP*)&_logos_orig$_ungrouped$CWSplashScreenStaticImage$initRemoteImageWithDuration$);}Class _logos_class$_ungrouped$DSMLinearVideoAdsManager = objc_getClass("DSMLinearVideoAdsManager"); { MSHookMessageEx(_logos_class$_ungrouped$DSMLinearVideoAdsManager, @selector(providerPrePodPromo), (IMP)&_logos_method$_ungrouped$DSMLinearVideoAdsManager$providerPrePodPromo, (IMP*)&_logos_orig$_ungrouped$DSMLinearVideoAdsManager$providerPrePodPromo);}{ MSHookMessageEx(_logos_class$_ungrouped$DSMLinearVideoAdsManager, @selector(enabled), (IMP)&_logos_method$_ungrouped$DSMLinearVideoAdsManager$enabled, (IMP*)&_logos_orig$_ungrouped$DSMLinearVideoAdsManager$enabled);}Class _logos_class$_ungrouped$GADAdFetcher = objc_getClass("GADAdFetcher"); { MSHookMessageEx(_logos_class$_ungrouped$GADAdFetcher, @selector(init), (IMP)&_logos_method$_ungrouped$GADAdFetcher$init, (IMP*)&_logos_orig$_ungrouped$GADAdFetcher$init);}Class _logos_class$_ungrouped$GADBannerView = objc_getClass("GADBannerView"); { MSHookMessageEx(_logos_class$_ungrouped$GADBannerView, @selector(slot), (IMP)&_logos_method$_ungrouped$GADBannerView$slot, (IMP*)&_logos_orig$_ungrouped$GADBannerView$slot);}Class _logos_class$_ungrouped$PWAppConfiguration = objc_getClass("PWAppConfiguration"); { MSHookMessageEx(_logos_class$_ungrouped$PWAppConfiguration, @selector(isForceUpgradeEnabled), (IMP)&_logos_method$_ungrouped$PWAppConfiguration$isForceUpgradeEnabled, (IMP*)&_logos_orig$_ungrouped$PWAppConfiguration$isForceUpgradeEnabled);}{ MSHookMessageEx(_logos_class$_ungrouped$PWAppConfiguration, @selector(isRatingsEnabled), (IMP)&_logos_method$_ungrouped$PWAppConfiguration$isRatingsEnabled, (IMP*)&_logos_orig$_ungrouped$PWAppConfiguration$isRatingsEnabled);}} }
#line 46 "Tweak.xm"
