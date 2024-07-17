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

@class AWEVideoViewBottomAdBar; @class AWEAsset; @class FWAd; @class GADAdFetcher; 
static GADAdFetcher* (*_logos_orig$_ungrouped$GADAdFetcher$init)(_LOGOS_SELF_TYPE_INIT GADAdFetcher*, SEL) _LOGOS_RETURN_RETAINED; static GADAdFetcher* _logos_method$_ungrouped$GADAdFetcher$init(_LOGOS_SELF_TYPE_INIT GADAdFetcher*, SEL) _LOGOS_RETURN_RETAINED; static unsigned int (*_logos_orig$_ungrouped$FWAd$adId)(_LOGOS_SELF_TYPE_NORMAL FWAd* _LOGOS_SELF_CONST, SEL); static unsigned int _logos_method$_ungrouped$FWAd$adId(_LOGOS_SELF_TYPE_NORMAL FWAd* _LOGOS_SELF_CONST, SEL); static AWEVideoViewBottomAdBar* (*_logos_orig$_ungrouped$AWEVideoViewBottomAdBar$initWithCoder$)(_LOGOS_SELF_TYPE_INIT AWEVideoViewBottomAdBar*, SEL, id) _LOGOS_RETURN_RETAINED; static AWEVideoViewBottomAdBar* _logos_method$_ungrouped$AWEVideoViewBottomAdBar$initWithCoder$(_LOGOS_SELF_TYPE_INIT AWEVideoViewBottomAdBar*, SEL, id) _LOGOS_RETURN_RETAINED; static id (*_logos_orig$_ungrouped$AWEAsset$adCuePoints)(_LOGOS_SELF_TYPE_NORMAL AWEAsset* _LOGOS_SELF_CONST, SEL); static id _logos_method$_ungrouped$AWEAsset$adCuePoints(_LOGOS_SELF_TYPE_NORMAL AWEAsset* _LOGOS_SELF_CONST, SEL); 

#line 3 "Tweak.xm"

static GADAdFetcher* _logos_method$_ungrouped$GADAdFetcher$init(_LOGOS_SELF_TYPE_INIT GADAdFetcher* __unused self, SEL __unused _cmd) _LOGOS_RETURN_RETAINED {
    return NULL;
}



static unsigned int _logos_method$_ungrouped$FWAd$adId(_LOGOS_SELF_TYPE_NORMAL FWAd* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 0;
}



static AWEVideoViewBottomAdBar* _logos_method$_ungrouped$AWEVideoViewBottomAdBar$initWithCoder$(_LOGOS_SELF_TYPE_INIT AWEVideoViewBottomAdBar* __unused self, SEL __unused _cmd, id arg1) _LOGOS_RETURN_RETAINED {
    arg1 = NULL;
    return _logos_orig$_ungrouped$AWEVideoViewBottomAdBar$initWithCoder$(self, _cmd, arg1);
}



static id _logos_method$_ungrouped$AWEAsset$adCuePoints(_LOGOS_SELF_TYPE_NORMAL AWEAsset* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return NULL;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$GADAdFetcher = objc_getClass("GADAdFetcher"); { MSHookMessageEx(_logos_class$_ungrouped$GADAdFetcher, @selector(init), (IMP)&_logos_method$_ungrouped$GADAdFetcher$init, (IMP*)&_logos_orig$_ungrouped$GADAdFetcher$init);}Class _logos_class$_ungrouped$FWAd = objc_getClass("FWAd"); { MSHookMessageEx(_logos_class$_ungrouped$FWAd, @selector(adId), (IMP)&_logos_method$_ungrouped$FWAd$adId, (IMP*)&_logos_orig$_ungrouped$FWAd$adId);}Class _logos_class$_ungrouped$AWEVideoViewBottomAdBar = objc_getClass("AWEVideoViewBottomAdBar"); { MSHookMessageEx(_logos_class$_ungrouped$AWEVideoViewBottomAdBar, @selector(initWithCoder:), (IMP)&_logos_method$_ungrouped$AWEVideoViewBottomAdBar$initWithCoder$, (IMP*)&_logos_orig$_ungrouped$AWEVideoViewBottomAdBar$initWithCoder$);}Class _logos_class$_ungrouped$AWEAsset = objc_getClass("AWEAsset"); { MSHookMessageEx(_logos_class$_ungrouped$AWEAsset, @selector(adCuePoints), (IMP)&_logos_method$_ungrouped$AWEAsset$adCuePoints, (IMP*)&_logos_orig$_ungrouped$AWEAsset$adCuePoints);}} }
#line 28 "Tweak.xm"
