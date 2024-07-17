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

@class MKStoreManager; @class NLAccessControlManager; @class GADAdFetcher; @class NLNBAGeoManager; @class UIStatusBarForegroundStyleAttributes; 
static BOOL (*_logos_orig$_ungrouped$MKStoreManager$isProductTypePurchased$)(_LOGOS_SELF_TYPE_NORMAL MKStoreManager* _LOGOS_SELF_CONST, SEL, int); static BOOL _logos_method$_ungrouped$MKStoreManager$isProductTypePurchased$(_LOGOS_SELF_TYPE_NORMAL MKStoreManager* _LOGOS_SELF_CONST, SEL, int); static BOOL (*_logos_orig$_ungrouped$NLAccessControlManager$isVIPAccount)(_LOGOS_SELF_TYPE_NORMAL NLAccessControlManager* _LOGOS_SELF_CONST, SEL); static BOOL _logos_method$_ungrouped$NLAccessControlManager$isVIPAccount(_LOGOS_SELF_TYPE_NORMAL NLAccessControlManager* _LOGOS_SELF_CONST, SEL); static BOOL (*_logos_orig$_ungrouped$NLAccessControlManager$isLiveChannelAvailableForCurrentLocation)(_LOGOS_SELF_TYPE_NORMAL NLAccessControlManager* _LOGOS_SELF_CONST, SEL); static BOOL _logos_method$_ungrouped$NLAccessControlManager$isLiveChannelAvailableForCurrentLocation(_LOGOS_SELF_TYPE_NORMAL NLAccessControlManager* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$NLNBAGeoManager$geoCheckRequestDone$)(_LOGOS_SELF_TYPE_NORMAL NLNBAGeoManager* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$NLNBAGeoManager$geoCheckRequestDone$(_LOGOS_SELF_TYPE_NORMAL NLNBAGeoManager* _LOGOS_SELF_CONST, SEL, id); static GADAdFetcher* (*_logos_orig$_ungrouped$GADAdFetcher$init)(_LOGOS_SELF_TYPE_INIT GADAdFetcher*, SEL) _LOGOS_RETURN_RETAINED; static GADAdFetcher* _logos_method$_ungrouped$GADAdFetcher$init(_LOGOS_SELF_TYPE_INIT GADAdFetcher*, SEL) _LOGOS_RETURN_RETAINED; static UIStatusBarForegroundStyleAttributes* (*_logos_orig$_ungrouped$UIStatusBarForegroundStyleAttributes$initWithHeight$legibilityStyle$)(_LOGOS_SELF_TYPE_INIT UIStatusBarForegroundStyleAttributes*, SEL, float, int) _LOGOS_RETURN_RETAINED; static UIStatusBarForegroundStyleAttributes* _logos_method$_ungrouped$UIStatusBarForegroundStyleAttributes$initWithHeight$legibilityStyle$(_LOGOS_SELF_TYPE_INIT UIStatusBarForegroundStyleAttributes*, SEL, float, int) _LOGOS_RETURN_RETAINED; 

#line 3 "Tweak.xm"

static BOOL _logos_method$_ungrouped$MKStoreManager$isProductTypePurchased$(_LOGOS_SELF_TYPE_NORMAL MKStoreManager* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, int arg1) {
    
    return 1;
}



static BOOL _logos_method$_ungrouped$NLAccessControlManager$isVIPAccount(_LOGOS_SELF_TYPE_NORMAL NLAccessControlManager* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 1;
}



static BOOL _logos_method$_ungrouped$NLAccessControlManager$isLiveChannelAvailableForCurrentLocation(_LOGOS_SELF_TYPE_NORMAL NLAccessControlManager* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 1;
}



static void _logos_method$_ungrouped$NLNBAGeoManager$geoCheckRequestDone$(_LOGOS_SELF_TYPE_NORMAL NLNBAGeoManager* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = NULL;
    _logos_orig$_ungrouped$NLNBAGeoManager$geoCheckRequestDone$(self, _cmd, arg1);
}



static GADAdFetcher* _logos_method$_ungrouped$GADAdFetcher$init(_LOGOS_SELF_TYPE_INIT GADAdFetcher* __unused self, SEL __unused _cmd) _LOGOS_RETURN_RETAINED {
    
    return NULL;
}



static UIStatusBarForegroundStyleAttributes* _logos_method$_ungrouped$UIStatusBarForegroundStyleAttributes$initWithHeight$legibilityStyle$(_LOGOS_SELF_TYPE_INIT UIStatusBarForegroundStyleAttributes* __unused self, SEL __unused _cmd, float arg1, int arg2) _LOGOS_RETURN_RETAINED {
    
    return NULL;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$MKStoreManager = objc_getClass("MKStoreManager"); { MSHookMessageEx(_logos_class$_ungrouped$MKStoreManager, @selector(isProductTypePurchased:), (IMP)&_logos_method$_ungrouped$MKStoreManager$isProductTypePurchased$, (IMP*)&_logos_orig$_ungrouped$MKStoreManager$isProductTypePurchased$);}Class _logos_class$_ungrouped$NLAccessControlManager = objc_getClass("NLAccessControlManager"); { MSHookMessageEx(_logos_class$_ungrouped$NLAccessControlManager, @selector(isVIPAccount), (IMP)&_logos_method$_ungrouped$NLAccessControlManager$isVIPAccount, (IMP*)&_logos_orig$_ungrouped$NLAccessControlManager$isVIPAccount);}{ MSHookMessageEx(_logos_class$_ungrouped$NLAccessControlManager, @selector(isLiveChannelAvailableForCurrentLocation), (IMP)&_logos_method$_ungrouped$NLAccessControlManager$isLiveChannelAvailableForCurrentLocation, (IMP*)&_logos_orig$_ungrouped$NLAccessControlManager$isLiveChannelAvailableForCurrentLocation);}Class _logos_class$_ungrouped$NLNBAGeoManager = objc_getClass("NLNBAGeoManager"); { MSHookMessageEx(_logos_class$_ungrouped$NLNBAGeoManager, @selector(geoCheckRequestDone:), (IMP)&_logos_method$_ungrouped$NLNBAGeoManager$geoCheckRequestDone$, (IMP*)&_logos_orig$_ungrouped$NLNBAGeoManager$geoCheckRequestDone$);}Class _logos_class$_ungrouped$GADAdFetcher = objc_getClass("GADAdFetcher"); { MSHookMessageEx(_logos_class$_ungrouped$GADAdFetcher, @selector(init), (IMP)&_logos_method$_ungrouped$GADAdFetcher$init, (IMP*)&_logos_orig$_ungrouped$GADAdFetcher$init);}Class _logos_class$_ungrouped$UIStatusBarForegroundStyleAttributes = objc_getClass("UIStatusBarForegroundStyleAttributes"); { MSHookMessageEx(_logos_class$_ungrouped$UIStatusBarForegroundStyleAttributes, @selector(initWithHeight:legibilityStyle:), (IMP)&_logos_method$_ungrouped$UIStatusBarForegroundStyleAttributes$initWithHeight$legibilityStyle$, (IMP*)&_logos_orig$_ungrouped$UIStatusBarForegroundStyleAttributes$initWithHeight$legibilityStyle$);}} }
#line 46 "Tweak.xm"
