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

@class GADBannerView; @class FWAd; 
static void (*_logos_orig$_ungrouped$GADBannerView$setAdSize$andReload$)(_LOGOS_SELF_TYPE_NORMAL GADBannerView* _LOGOS_SELF_CONST, SEL, GADAdSize, BOOL); static void _logos_method$_ungrouped$GADBannerView$setAdSize$andReload$(_LOGOS_SELF_TYPE_NORMAL GADBannerView* _LOGOS_SELF_CONST, SEL, GADAdSize, BOOL); static unsigned int (*_logos_orig$_ungrouped$FWAd$adId)(_LOGOS_SELF_TYPE_NORMAL FWAd* _LOGOS_SELF_CONST, SEL); static unsigned int _logos_method$_ungrouped$FWAd$adId(_LOGOS_SELF_TYPE_NORMAL FWAd* _LOGOS_SELF_CONST, SEL); 

#line 3 "Tweak.xm"

static void _logos_method$_ungrouped$GADBannerView$setAdSize$andReload$(_LOGOS_SELF_TYPE_NORMAL GADBannerView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, GADAdSize arg1, BOOL arg2) {
    arg2 = 0;
    _logos_orig$_ungrouped$GADBannerView$setAdSize$andReload$(self, _cmd, arg1, arg2);
}



static unsigned int _logos_method$_ungrouped$FWAd$adId(_LOGOS_SELF_TYPE_NORMAL FWAd* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 0;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$GADBannerView = objc_getClass("GADBannerView"); { MSHookMessageEx(_logos_class$_ungrouped$GADBannerView, @selector(setAdSize:andReload:), (IMP)&_logos_method$_ungrouped$GADBannerView$setAdSize$andReload$, (IMP*)&_logos_orig$_ungrouped$GADBannerView$setAdSize$andReload$);}Class _logos_class$_ungrouped$FWAd = objc_getClass("FWAd"); { MSHookMessageEx(_logos_class$_ungrouped$FWAd, @selector(adId), (IMP)&_logos_method$_ungrouped$FWAd$adId, (IMP*)&_logos_orig$_ungrouped$FWAd$adId);}} }
#line 16 "Tweak.xm"