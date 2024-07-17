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

@class CRAppRater; @class RHRadioPlayContext; @class LocalyticsDatapointHelper; @class RHAccountController; @class RHRadioPlayableItemsProvider; 
static BOOL (*_logos_orig$_ungrouped$RHAccountController$signedIn)(_LOGOS_SELF_TYPE_NORMAL RHAccountController* _LOGOS_SELF_CONST, SEL); static BOOL _logos_method$_ungrouped$RHAccountController$signedIn(_LOGOS_SELF_TYPE_NORMAL RHAccountController* _LOGOS_SELF_CONST, SEL); static BOOL (*_logos_orig$_ungrouped$RHAccountController$upgradeRequired)(_LOGOS_SELF_TYPE_NORMAL RHAccountController* _LOGOS_SELF_CONST, SEL); static BOOL _logos_method$_ungrouped$RHAccountController$upgradeRequired(_LOGOS_SELF_TYPE_NORMAL RHAccountController* _LOGOS_SELF_CONST, SEL); static BOOL (*_logos_orig$_ungrouped$RHAccountController$hasStreamEntitlements)(_LOGOS_SELF_TYPE_NORMAL RHAccountController* _LOGOS_SELF_CONST, SEL); static BOOL _logos_method$_ungrouped$RHAccountController$hasStreamEntitlements(_LOGOS_SELF_TYPE_NORMAL RHAccountController* _LOGOS_SELF_CONST, SEL); static BOOL (*_logos_orig$_ungrouped$RHAccountController$hasRadioEntitlements)(_LOGOS_SELF_TYPE_NORMAL RHAccountController* _LOGOS_SELF_CONST, SEL); static BOOL _logos_method$_ungrouped$RHAccountController$hasRadioEntitlements(_LOGOS_SELF_TYPE_NORMAL RHAccountController* _LOGOS_SELF_CONST, SEL); static BOOL (*_logos_orig$_ungrouped$RHAccountController$hasDownloadEntitlements)(_LOGOS_SELF_TYPE_NORMAL RHAccountController* _LOGOS_SELF_CONST, SEL); static BOOL _logos_method$_ungrouped$RHAccountController$hasDownloadEntitlements(_LOGOS_SELF_TYPE_NORMAL RHAccountController* _LOGOS_SELF_CONST, SEL); static BOOL (*_logos_orig$_ungrouped$RHAccountController$hasDownloadFavoriteEntitlements)(_LOGOS_SELF_TYPE_NORMAL RHAccountController* _LOGOS_SELF_CONST, SEL); static BOOL _logos_method$_ungrouped$RHAccountController$hasDownloadFavoriteEntitlements(_LOGOS_SELF_TYPE_NORMAL RHAccountController* _LOGOS_SELF_CONST, SEL); static BOOL (*_logos_orig$_ungrouped$RHRadioPlayableItemsProvider$supportsSkipBackwards)(_LOGOS_SELF_TYPE_NORMAL RHRadioPlayableItemsProvider* _LOGOS_SELF_CONST, SEL); static BOOL _logos_method$_ungrouped$RHRadioPlayableItemsProvider$supportsSkipBackwards(_LOGOS_SELF_TYPE_NORMAL RHRadioPlayableItemsProvider* _LOGOS_SELF_CONST, SEL); static BOOL (*_logos_orig$_ungrouped$RHRadioPlayableItemsProvider$supportsUserScrubbing)(_LOGOS_SELF_TYPE_NORMAL RHRadioPlayableItemsProvider* _LOGOS_SELF_CONST, SEL); static BOOL _logos_method$_ungrouped$RHRadioPlayableItemsProvider$supportsUserScrubbing(_LOGOS_SELF_TYPE_NORMAL RHRadioPlayableItemsProvider* _LOGOS_SELF_CONST, SEL); static BOOL (*_logos_meta_orig$_ungrouped$LocalyticsDatapointHelper$isDeviceJailbroken)(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL); static BOOL _logos_meta_method$_ungrouped$LocalyticsDatapointHelper$isDeviceJailbroken(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL); static BOOL (*_logos_orig$_ungrouped$RHRadioPlayContext$supportsSkipBackwards)(_LOGOS_SELF_TYPE_NORMAL RHRadioPlayContext* _LOGOS_SELF_CONST, SEL); static BOOL _logos_method$_ungrouped$RHRadioPlayContext$supportsSkipBackwards(_LOGOS_SELF_TYPE_NORMAL RHRadioPlayContext* _LOGOS_SELF_CONST, SEL); static BOOL (*_logos_orig$_ungrouped$RHRadioPlayContext$supportsUserScrubbing)(_LOGOS_SELF_TYPE_NORMAL RHRadioPlayContext* _LOGOS_SELF_CONST, SEL); static BOOL _logos_method$_ungrouped$RHRadioPlayContext$supportsUserScrubbing(_LOGOS_SELF_TYPE_NORMAL RHRadioPlayContext* _LOGOS_SELF_CONST, SEL); static id (*_logos_orig$_ungrouped$CRAppRater$rateMeAlert)(_LOGOS_SELF_TYPE_NORMAL CRAppRater* _LOGOS_SELF_CONST, SEL); static id _logos_method$_ungrouped$CRAppRater$rateMeAlert(_LOGOS_SELF_TYPE_NORMAL CRAppRater* _LOGOS_SELF_CONST, SEL); 

#line 3 "Tweak.xm"

static BOOL _logos_method$_ungrouped$RHAccountController$signedIn(_LOGOS_SELF_TYPE_NORMAL RHAccountController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 1;
}



static BOOL _logos_method$_ungrouped$RHRadioPlayableItemsProvider$supportsSkipBackwards(_LOGOS_SELF_TYPE_NORMAL RHRadioPlayableItemsProvider* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 1;
}



static BOOL _logos_method$_ungrouped$RHRadioPlayableItemsProvider$supportsUserScrubbing(_LOGOS_SELF_TYPE_NORMAL RHRadioPlayableItemsProvider* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 1;
}



static BOOL _logos_meta_method$_ungrouped$LocalyticsDatapointHelper$isDeviceJailbroken(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 0;
}



static BOOL _logos_method$_ungrouped$RHAccountController$upgradeRequired(_LOGOS_SELF_TYPE_NORMAL RHAccountController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 0;
}



static BOOL _logos_method$_ungrouped$RHAccountController$hasStreamEntitlements(_LOGOS_SELF_TYPE_NORMAL RHAccountController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 1;
}



static BOOL _logos_method$_ungrouped$RHAccountController$hasRadioEntitlements(_LOGOS_SELF_TYPE_NORMAL RHAccountController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 1;
}



static BOOL _logos_method$_ungrouped$RHAccountController$hasDownloadEntitlements(_LOGOS_SELF_TYPE_NORMAL RHAccountController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 1;
}



static BOOL _logos_method$_ungrouped$RHRadioPlayContext$supportsSkipBackwards(_LOGOS_SELF_TYPE_NORMAL RHRadioPlayContext* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 1;
}



static BOOL _logos_method$_ungrouped$RHRadioPlayContext$supportsUserScrubbing(_LOGOS_SELF_TYPE_NORMAL RHRadioPlayContext* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 1;
}



static BOOL _logos_method$_ungrouped$RHAccountController$hasDownloadFavoriteEntitlements(_LOGOS_SELF_TYPE_NORMAL RHAccountController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 1;
}



static id _logos_method$_ungrouped$CRAppRater$rateMeAlert(_LOGOS_SELF_TYPE_NORMAL CRAppRater* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return NULL;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$RHAccountController = objc_getClass("RHAccountController"); { MSHookMessageEx(_logos_class$_ungrouped$RHAccountController, @selector(signedIn), (IMP)&_logos_method$_ungrouped$RHAccountController$signedIn, (IMP*)&_logos_orig$_ungrouped$RHAccountController$signedIn);}{ MSHookMessageEx(_logos_class$_ungrouped$RHAccountController, @selector(upgradeRequired), (IMP)&_logos_method$_ungrouped$RHAccountController$upgradeRequired, (IMP*)&_logos_orig$_ungrouped$RHAccountController$upgradeRequired);}{ MSHookMessageEx(_logos_class$_ungrouped$RHAccountController, @selector(hasStreamEntitlements), (IMP)&_logos_method$_ungrouped$RHAccountController$hasStreamEntitlements, (IMP*)&_logos_orig$_ungrouped$RHAccountController$hasStreamEntitlements);}{ MSHookMessageEx(_logos_class$_ungrouped$RHAccountController, @selector(hasRadioEntitlements), (IMP)&_logos_method$_ungrouped$RHAccountController$hasRadioEntitlements, (IMP*)&_logos_orig$_ungrouped$RHAccountController$hasRadioEntitlements);}{ MSHookMessageEx(_logos_class$_ungrouped$RHAccountController, @selector(hasDownloadEntitlements), (IMP)&_logos_method$_ungrouped$RHAccountController$hasDownloadEntitlements, (IMP*)&_logos_orig$_ungrouped$RHAccountController$hasDownloadEntitlements);}{ MSHookMessageEx(_logos_class$_ungrouped$RHAccountController, @selector(hasDownloadFavoriteEntitlements), (IMP)&_logos_method$_ungrouped$RHAccountController$hasDownloadFavoriteEntitlements, (IMP*)&_logos_orig$_ungrouped$RHAccountController$hasDownloadFavoriteEntitlements);}Class _logos_class$_ungrouped$RHRadioPlayableItemsProvider = objc_getClass("RHRadioPlayableItemsProvider"); { MSHookMessageEx(_logos_class$_ungrouped$RHRadioPlayableItemsProvider, @selector(supportsSkipBackwards), (IMP)&_logos_method$_ungrouped$RHRadioPlayableItemsProvider$supportsSkipBackwards, (IMP*)&_logos_orig$_ungrouped$RHRadioPlayableItemsProvider$supportsSkipBackwards);}{ MSHookMessageEx(_logos_class$_ungrouped$RHRadioPlayableItemsProvider, @selector(supportsUserScrubbing), (IMP)&_logos_method$_ungrouped$RHRadioPlayableItemsProvider$supportsUserScrubbing, (IMP*)&_logos_orig$_ungrouped$RHRadioPlayableItemsProvider$supportsUserScrubbing);}Class _logos_class$_ungrouped$LocalyticsDatapointHelper = objc_getClass("LocalyticsDatapointHelper"); Class _logos_metaclass$_ungrouped$LocalyticsDatapointHelper = object_getClass(_logos_class$_ungrouped$LocalyticsDatapointHelper); { MSHookMessageEx(_logos_metaclass$_ungrouped$LocalyticsDatapointHelper, @selector(isDeviceJailbroken), (IMP)&_logos_meta_method$_ungrouped$LocalyticsDatapointHelper$isDeviceJailbroken, (IMP*)&_logos_meta_orig$_ungrouped$LocalyticsDatapointHelper$isDeviceJailbroken);}Class _logos_class$_ungrouped$RHRadioPlayContext = objc_getClass("RHRadioPlayContext"); { MSHookMessageEx(_logos_class$_ungrouped$RHRadioPlayContext, @selector(supportsSkipBackwards), (IMP)&_logos_method$_ungrouped$RHRadioPlayContext$supportsSkipBackwards, (IMP*)&_logos_orig$_ungrouped$RHRadioPlayContext$supportsSkipBackwards);}{ MSHookMessageEx(_logos_class$_ungrouped$RHRadioPlayContext, @selector(supportsUserScrubbing), (IMP)&_logos_method$_ungrouped$RHRadioPlayContext$supportsUserScrubbing, (IMP*)&_logos_orig$_ungrouped$RHRadioPlayContext$supportsUserScrubbing);}Class _logos_class$_ungrouped$CRAppRater = objc_getClass("CRAppRater"); { MSHookMessageEx(_logos_class$_ungrouped$CRAppRater, @selector(rateMeAlert), (IMP)&_logos_method$_ungrouped$CRAppRater$rateMeAlert, (IMP*)&_logos_orig$_ungrouped$CRAppRater$rateMeAlert);}} }
#line 75 "Tweak.xm"
