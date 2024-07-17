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

@class FWAd; @class DCMainNavigationViewController; 
static unsigned int (*_logos_orig$_ungrouped$FWAd$adId)(_LOGOS_SELF_TYPE_NORMAL FWAd* _LOGOS_SELF_CONST, SEL); static unsigned int _logos_method$_ungrouped$FWAd$adId(_LOGOS_SELF_TYPE_NORMAL FWAd* _LOGOS_SELF_CONST, SEL); static BOOL (*_logos_orig$_ungrouped$DCMainNavigationViewController$bannerAdLoaded)(_LOGOS_SELF_TYPE_NORMAL DCMainNavigationViewController* _LOGOS_SELF_CONST, SEL); static BOOL _logos_method$_ungrouped$DCMainNavigationViewController$bannerAdLoaded(_LOGOS_SELF_TYPE_NORMAL DCMainNavigationViewController* _LOGOS_SELF_CONST, SEL); 

#line 3 "Tweak.xm"

static unsigned int _logos_method$_ungrouped$FWAd$adId(_LOGOS_SELF_TYPE_NORMAL FWAd* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 0;
}



static BOOL _logos_method$_ungrouped$DCMainNavigationViewController$bannerAdLoaded(_LOGOS_SELF_TYPE_NORMAL DCMainNavigationViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 0;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$FWAd = objc_getClass("FWAd"); { MSHookMessageEx(_logos_class$_ungrouped$FWAd, @selector(adId), (IMP)&_logos_method$_ungrouped$FWAd$adId, (IMP*)&_logos_orig$_ungrouped$FWAd$adId);}Class _logos_class$_ungrouped$DCMainNavigationViewController = objc_getClass("DCMainNavigationViewController"); { MSHookMessageEx(_logos_class$_ungrouped$DCMainNavigationViewController, @selector(bannerAdLoaded), (IMP)&_logos_method$_ungrouped$DCMainNavigationViewController$bannerAdLoaded, (IMP*)&_logos_orig$_ungrouped$DCMainNavigationViewController$bannerAdLoaded);}} }
#line 15 "Tweak.xm"
