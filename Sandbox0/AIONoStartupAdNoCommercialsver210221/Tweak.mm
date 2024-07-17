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

@class AWEAsset; @class FWAd; @class AETNVideoSplashScreenViewController; 
static BOOL (*_logos_orig$_ungrouped$AETNVideoSplashScreenViewController$isFinished)(_LOGOS_SELF_TYPE_NORMAL AETNVideoSplashScreenViewController* _LOGOS_SELF_CONST, SEL); static BOOL _logos_method$_ungrouped$AETNVideoSplashScreenViewController$isFinished(_LOGOS_SELF_TYPE_NORMAL AETNVideoSplashScreenViewController* _LOGOS_SELF_CONST, SEL); static unsigned int (*_logos_orig$_ungrouped$FWAd$adId)(_LOGOS_SELF_TYPE_NORMAL FWAd* _LOGOS_SELF_CONST, SEL); static unsigned int _logos_method$_ungrouped$FWAd$adId(_LOGOS_SELF_TYPE_NORMAL FWAd* _LOGOS_SELF_CONST, SEL); static id (*_logos_orig$_ungrouped$AWEAsset$adCuePoints)(_LOGOS_SELF_TYPE_NORMAL AWEAsset* _LOGOS_SELF_CONST, SEL); static id _logos_method$_ungrouped$AWEAsset$adCuePoints(_LOGOS_SELF_TYPE_NORMAL AWEAsset* _LOGOS_SELF_CONST, SEL); 

#line 3 "Tweak.xm"

static BOOL _logos_method$_ungrouped$AETNVideoSplashScreenViewController$isFinished(_LOGOS_SELF_TYPE_NORMAL AETNVideoSplashScreenViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 1;
}



static unsigned int _logos_method$_ungrouped$FWAd$adId(_LOGOS_SELF_TYPE_NORMAL FWAd* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 0;
}



static id _logos_method$_ungrouped$AWEAsset$adCuePoints(_LOGOS_SELF_TYPE_NORMAL AWEAsset* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return NULL;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$AETNVideoSplashScreenViewController = objc_getClass("AETNVideoSplashScreenViewController"); { MSHookMessageEx(_logos_class$_ungrouped$AETNVideoSplashScreenViewController, @selector(isFinished), (IMP)&_logos_method$_ungrouped$AETNVideoSplashScreenViewController$isFinished, (IMP*)&_logos_orig$_ungrouped$AETNVideoSplashScreenViewController$isFinished);}Class _logos_class$_ungrouped$FWAd = objc_getClass("FWAd"); { MSHookMessageEx(_logos_class$_ungrouped$FWAd, @selector(adId), (IMP)&_logos_method$_ungrouped$FWAd$adId, (IMP*)&_logos_orig$_ungrouped$FWAd$adId);}Class _logos_class$_ungrouped$AWEAsset = objc_getClass("AWEAsset"); { MSHookMessageEx(_logos_class$_ungrouped$AWEAsset, @selector(adCuePoints), (IMP)&_logos_method$_ungrouped$AWEAsset$adCuePoints, (IMP*)&_logos_orig$_ungrouped$AWEAsset$adCuePoints);}} }
#line 21 "Tweak.xm"
