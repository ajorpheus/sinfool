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

@class GADAdFetcher; @class NHLAccessControlManager; @class FWAd; 
static BOOL (*_logos_orig$_ungrouped$NHLAccessControlManager$isRogersUser)(_LOGOS_SELF_TYPE_NORMAL NHLAccessControlManager* _LOGOS_SELF_CONST, SEL); static BOOL _logos_method$_ungrouped$NHLAccessControlManager$isRogersUser(_LOGOS_SELF_TYPE_NORMAL NHLAccessControlManager* _LOGOS_SELF_CONST, SEL); static BOOL (*_logos_orig$_ungrouped$NHLAccessControlManager$isLocalGclSubscription)(_LOGOS_SELF_TYPE_NORMAL NHLAccessControlManager* _LOGOS_SELF_CONST, SEL); static BOOL _logos_method$_ungrouped$NHLAccessControlManager$isLocalGclSubscription(_LOGOS_SELF_TYPE_NORMAL NHLAccessControlManager* _LOGOS_SELF_CONST, SEL); static BOOL (*_logos_orig$_ungrouped$NHLAccessControlManager$isGclSubscription)(_LOGOS_SELF_TYPE_NORMAL NHLAccessControlManager* _LOGOS_SELF_CONST, SEL); static BOOL _logos_method$_ungrouped$NHLAccessControlManager$isGclSubscription(_LOGOS_SELF_TYPE_NORMAL NHLAccessControlManager* _LOGOS_SELF_CONST, SEL); static unsigned int (*_logos_orig$_ungrouped$FWAd$adId)(_LOGOS_SELF_TYPE_NORMAL FWAd* _LOGOS_SELF_CONST, SEL); static unsigned int _logos_method$_ungrouped$FWAd$adId(_LOGOS_SELF_TYPE_NORMAL FWAd* _LOGOS_SELF_CONST, SEL); static GADAdFetcher* (*_logos_orig$_ungrouped$GADAdFetcher$init)(_LOGOS_SELF_TYPE_INIT GADAdFetcher*, SEL) _LOGOS_RETURN_RETAINED; static GADAdFetcher* _logos_method$_ungrouped$GADAdFetcher$init(_LOGOS_SELF_TYPE_INIT GADAdFetcher*, SEL) _LOGOS_RETURN_RETAINED; 

#line 3 "Tweak.xm"

static BOOL _logos_method$_ungrouped$NHLAccessControlManager$isRogersUser(_LOGOS_SELF_TYPE_NORMAL NHLAccessControlManager* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 1;
}



static BOOL _logos_method$_ungrouped$NHLAccessControlManager$isLocalGclSubscription(_LOGOS_SELF_TYPE_NORMAL NHLAccessControlManager* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 1;
}



static BOOL _logos_method$_ungrouped$NHLAccessControlManager$isGclSubscription(_LOGOS_SELF_TYPE_NORMAL NHLAccessControlManager* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 1;
}



static unsigned int _logos_method$_ungrouped$FWAd$adId(_LOGOS_SELF_TYPE_NORMAL FWAd* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 0;
}



static GADAdFetcher* _logos_method$_ungrouped$GADAdFetcher$init(_LOGOS_SELF_TYPE_INIT GADAdFetcher* __unused self, SEL __unused _cmd) _LOGOS_RETURN_RETAINED {
    return NULL;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$NHLAccessControlManager = objc_getClass("NHLAccessControlManager"); { MSHookMessageEx(_logos_class$_ungrouped$NHLAccessControlManager, @selector(isRogersUser), (IMP)&_logos_method$_ungrouped$NHLAccessControlManager$isRogersUser, (IMP*)&_logos_orig$_ungrouped$NHLAccessControlManager$isRogersUser);}{ MSHookMessageEx(_logos_class$_ungrouped$NHLAccessControlManager, @selector(isLocalGclSubscription), (IMP)&_logos_method$_ungrouped$NHLAccessControlManager$isLocalGclSubscription, (IMP*)&_logos_orig$_ungrouped$NHLAccessControlManager$isLocalGclSubscription);}{ MSHookMessageEx(_logos_class$_ungrouped$NHLAccessControlManager, @selector(isGclSubscription), (IMP)&_logos_method$_ungrouped$NHLAccessControlManager$isGclSubscription, (IMP*)&_logos_orig$_ungrouped$NHLAccessControlManager$isGclSubscription);}Class _logos_class$_ungrouped$FWAd = objc_getClass("FWAd"); { MSHookMessageEx(_logos_class$_ungrouped$FWAd, @selector(adId), (IMP)&_logos_method$_ungrouped$FWAd$adId, (IMP*)&_logos_orig$_ungrouped$FWAd$adId);}Class _logos_class$_ungrouped$GADAdFetcher = objc_getClass("GADAdFetcher"); { MSHookMessageEx(_logos_class$_ungrouped$GADAdFetcher, @selector(init), (IMP)&_logos_method$_ungrouped$GADAdFetcher$init, (IMP*)&_logos_orig$_ungrouped$GADAdFetcher$init);}} }
#line 33 "Tweak.xm"
