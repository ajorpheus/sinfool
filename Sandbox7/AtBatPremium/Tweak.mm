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

@class SponsorHelper; @class InAppPurchaseConfig; @class ABInAppPurchaseHelper; 
static BOOL (*_logos_orig$_ungrouped$SponsorHelper$shouldOfferCarrierAppSponsor$)(_LOGOS_SELF_TYPE_NORMAL SponsorHelper* _LOGOS_SELF_CONST, SEL, id); static BOOL _logos_method$_ungrouped$SponsorHelper$shouldOfferCarrierAppSponsor$(_LOGOS_SELF_TYPE_NORMAL SponsorHelper* _LOGOS_SELF_CONST, SEL, id); static BOOL (*_logos_orig$_ungrouped$ABInAppPurchaseHelper$hasCarrierPlatformAccess)(_LOGOS_SELF_TYPE_NORMAL ABInAppPurchaseHelper* _LOGOS_SELF_CONST, SEL); static BOOL _logos_method$_ungrouped$ABInAppPurchaseHelper$hasCarrierPlatformAccess(_LOGOS_SELF_TYPE_NORMAL ABInAppPurchaseHelper* _LOGOS_SELF_CONST, SEL); static BOOL (*_logos_orig$_ungrouped$InAppPurchaseConfig$shouldUnlockAllFeatures)(_LOGOS_SELF_TYPE_NORMAL InAppPurchaseConfig* _LOGOS_SELF_CONST, SEL); static BOOL _logos_method$_ungrouped$InAppPurchaseConfig$shouldUnlockAllFeatures(_LOGOS_SELF_TYPE_NORMAL InAppPurchaseConfig* _LOGOS_SELF_CONST, SEL); 

#line 3 "Tweak.xm"

static BOOL _logos_method$_ungrouped$SponsorHelper$shouldOfferCarrierAppSponsor$(_LOGOS_SELF_TYPE_NORMAL SponsorHelper* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    return 1;
}



static BOOL _logos_method$_ungrouped$ABInAppPurchaseHelper$hasCarrierPlatformAccess(_LOGOS_SELF_TYPE_NORMAL ABInAppPurchaseHelper* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 1;
}



static BOOL _logos_method$_ungrouped$InAppPurchaseConfig$shouldUnlockAllFeatures(_LOGOS_SELF_TYPE_NORMAL InAppPurchaseConfig* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 1;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$SponsorHelper = objc_getClass("SponsorHelper"); { MSHookMessageEx(_logos_class$_ungrouped$SponsorHelper, @selector(shouldOfferCarrierAppSponsor:), (IMP)&_logos_method$_ungrouped$SponsorHelper$shouldOfferCarrierAppSponsor$, (IMP*)&_logos_orig$_ungrouped$SponsorHelper$shouldOfferCarrierAppSponsor$);}Class _logos_class$_ungrouped$ABInAppPurchaseHelper = objc_getClass("ABInAppPurchaseHelper"); { MSHookMessageEx(_logos_class$_ungrouped$ABInAppPurchaseHelper, @selector(hasCarrierPlatformAccess), (IMP)&_logos_method$_ungrouped$ABInAppPurchaseHelper$hasCarrierPlatformAccess, (IMP*)&_logos_orig$_ungrouped$ABInAppPurchaseHelper$hasCarrierPlatformAccess);}Class _logos_class$_ungrouped$InAppPurchaseConfig = objc_getClass("InAppPurchaseConfig"); { MSHookMessageEx(_logos_class$_ungrouped$InAppPurchaseConfig, @selector(shouldUnlockAllFeatures), (IMP)&_logos_method$_ungrouped$InAppPurchaseConfig$shouldUnlockAllFeatures, (IMP*)&_logos_orig$_ungrouped$InAppPurchaseConfig$shouldUnlockAllFeatures);}} }
#line 21 "Tweak.xm"
