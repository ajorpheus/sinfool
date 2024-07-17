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

@class VMNPlayer; @class MTVTVESubscriber; @class MTVShowAdView; @class MTVOnTvTileAdView; @class MTVHomeAdView; @class MTVBrowseAdView; @class MTVConfig; 
static id (*_logos_orig$_ungrouped$MTVConfig$getAds)(_LOGOS_SELF_TYPE_NORMAL MTVConfig* _LOGOS_SELF_CONST, SEL); static id _logos_method$_ungrouped$MTVConfig$getAds(_LOGOS_SELF_TYPE_NORMAL MTVConfig* _LOGOS_SELF_CONST, SEL); static BOOL (*_logos_orig$_ungrouped$MTVTVESubscriber$isAuthorized)(_LOGOS_SELF_TYPE_NORMAL MTVTVESubscriber* _LOGOS_SELF_CONST, SEL); static BOOL _logos_method$_ungrouped$MTVTVESubscriber$isAuthorized(_LOGOS_SELF_TYPE_NORMAL MTVTVESubscriber* _LOGOS_SELF_CONST, SEL); static BOOL (*_logos_orig$_ungrouped$MTVTVESubscriber$isAuthenticated)(_LOGOS_SELF_TYPE_NORMAL MTVTVESubscriber* _LOGOS_SELF_CONST, SEL); static BOOL _logos_method$_ungrouped$MTVTVESubscriber$isAuthenticated(_LOGOS_SELF_TYPE_NORMAL MTVTVESubscriber* _LOGOS_SELF_CONST, SEL); static MTVHomeAdView* (*_logos_orig$_ungrouped$MTVHomeAdView$initWithFrame$)(_LOGOS_SELF_TYPE_INIT MTVHomeAdView*, SEL, CGRect) _LOGOS_RETURN_RETAINED; static MTVHomeAdView* _logos_method$_ungrouped$MTVHomeAdView$initWithFrame$(_LOGOS_SELF_TYPE_INIT MTVHomeAdView*, SEL, CGRect) _LOGOS_RETURN_RETAINED; static MTVShowAdView* (*_logos_orig$_ungrouped$MTVShowAdView$initWithFrame$)(_LOGOS_SELF_TYPE_INIT MTVShowAdView*, SEL, CGRect) _LOGOS_RETURN_RETAINED; static MTVShowAdView* _logos_method$_ungrouped$MTVShowAdView$initWithFrame$(_LOGOS_SELF_TYPE_INIT MTVShowAdView*, SEL, CGRect) _LOGOS_RETURN_RETAINED; static MTVBrowseAdView* (*_logos_orig$_ungrouped$MTVBrowseAdView$initWithFrame$)(_LOGOS_SELF_TYPE_INIT MTVBrowseAdView*, SEL, CGRect) _LOGOS_RETURN_RETAINED; static MTVBrowseAdView* _logos_method$_ungrouped$MTVBrowseAdView$initWithFrame$(_LOGOS_SELF_TYPE_INIT MTVBrowseAdView*, SEL, CGRect) _LOGOS_RETURN_RETAINED; static MTVOnTvTileAdView* (*_logos_orig$_ungrouped$MTVOnTvTileAdView$initWithFrame$)(_LOGOS_SELF_TYPE_INIT MTVOnTvTileAdView*, SEL, CGRect) _LOGOS_RETURN_RETAINED; static MTVOnTvTileAdView* _logos_method$_ungrouped$MTVOnTvTileAdView$initWithFrame$(_LOGOS_SELF_TYPE_INIT MTVOnTvTileAdView*, SEL, CGRect) _LOGOS_RETURN_RETAINED; static bool (*_logos_orig$_ungrouped$VMNPlayer$spinnerEnabled)(_LOGOS_SELF_TYPE_NORMAL VMNPlayer* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$VMNPlayer$spinnerEnabled(_LOGOS_SELF_TYPE_NORMAL VMNPlayer* _LOGOS_SELF_CONST, SEL); 

#line 3 "Tweak.xm"

static id _logos_method$_ungrouped$MTVConfig$getAds(_LOGOS_SELF_TYPE_NORMAL MTVConfig* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return NULL;
}



static BOOL _logos_method$_ungrouped$MTVTVESubscriber$isAuthorized(_LOGOS_SELF_TYPE_NORMAL MTVTVESubscriber* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 1;
}



static BOOL _logos_method$_ungrouped$MTVTVESubscriber$isAuthenticated(_LOGOS_SELF_TYPE_NORMAL MTVTVESubscriber* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 1;
}



static MTVHomeAdView* _logos_method$_ungrouped$MTVHomeAdView$initWithFrame$(_LOGOS_SELF_TYPE_INIT MTVHomeAdView* __unused self, SEL __unused _cmd, CGRect arg1) _LOGOS_RETURN_RETAINED {
    return NULL;
}



static MTVShowAdView* _logos_method$_ungrouped$MTVShowAdView$initWithFrame$(_LOGOS_SELF_TYPE_INIT MTVShowAdView* __unused self, SEL __unused _cmd, CGRect arg1) _LOGOS_RETURN_RETAINED {
    return NULL;
}



static MTVBrowseAdView* _logos_method$_ungrouped$MTVBrowseAdView$initWithFrame$(_LOGOS_SELF_TYPE_INIT MTVBrowseAdView* __unused self, SEL __unused _cmd, CGRect arg1) _LOGOS_RETURN_RETAINED {
    return NULL;
}



static MTVOnTvTileAdView* _logos_method$_ungrouped$MTVOnTvTileAdView$initWithFrame$(_LOGOS_SELF_TYPE_INIT MTVOnTvTileAdView* __unused self, SEL __unused _cmd, CGRect arg1) _LOGOS_RETURN_RETAINED {
    return NULL;
}



static bool _logos_method$_ungrouped$VMNPlayer$spinnerEnabled(_LOGOS_SELF_TYPE_NORMAL VMNPlayer* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 0;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$MTVConfig = objc_getClass("MTVConfig"); { MSHookMessageEx(_logos_class$_ungrouped$MTVConfig, @selector(getAds), (IMP)&_logos_method$_ungrouped$MTVConfig$getAds, (IMP*)&_logos_orig$_ungrouped$MTVConfig$getAds);}Class _logos_class$_ungrouped$MTVTVESubscriber = objc_getClass("MTVTVESubscriber"); { MSHookMessageEx(_logos_class$_ungrouped$MTVTVESubscriber, @selector(isAuthorized), (IMP)&_logos_method$_ungrouped$MTVTVESubscriber$isAuthorized, (IMP*)&_logos_orig$_ungrouped$MTVTVESubscriber$isAuthorized);}{ MSHookMessageEx(_logos_class$_ungrouped$MTVTVESubscriber, @selector(isAuthenticated), (IMP)&_logos_method$_ungrouped$MTVTVESubscriber$isAuthenticated, (IMP*)&_logos_orig$_ungrouped$MTVTVESubscriber$isAuthenticated);}Class _logos_class$_ungrouped$MTVHomeAdView = objc_getClass("MTVHomeAdView"); { MSHookMessageEx(_logos_class$_ungrouped$MTVHomeAdView, @selector(initWithFrame:), (IMP)&_logos_method$_ungrouped$MTVHomeAdView$initWithFrame$, (IMP*)&_logos_orig$_ungrouped$MTVHomeAdView$initWithFrame$);}Class _logos_class$_ungrouped$MTVShowAdView = objc_getClass("MTVShowAdView"); { MSHookMessageEx(_logos_class$_ungrouped$MTVShowAdView, @selector(initWithFrame:), (IMP)&_logos_method$_ungrouped$MTVShowAdView$initWithFrame$, (IMP*)&_logos_orig$_ungrouped$MTVShowAdView$initWithFrame$);}Class _logos_class$_ungrouped$MTVBrowseAdView = objc_getClass("MTVBrowseAdView"); { MSHookMessageEx(_logos_class$_ungrouped$MTVBrowseAdView, @selector(initWithFrame:), (IMP)&_logos_method$_ungrouped$MTVBrowseAdView$initWithFrame$, (IMP*)&_logos_orig$_ungrouped$MTVBrowseAdView$initWithFrame$);}Class _logos_class$_ungrouped$MTVOnTvTileAdView = objc_getClass("MTVOnTvTileAdView"); { MSHookMessageEx(_logos_class$_ungrouped$MTVOnTvTileAdView, @selector(initWithFrame:), (IMP)&_logos_method$_ungrouped$MTVOnTvTileAdView$initWithFrame$, (IMP*)&_logos_orig$_ungrouped$MTVOnTvTileAdView$initWithFrame$);}Class _logos_class$_ungrouped$VMNPlayer = objc_getClass("VMNPlayer"); { MSHookMessageEx(_logos_class$_ungrouped$VMNPlayer, @selector(spinnerEnabled), (IMP)&_logos_method$_ungrouped$VMNPlayer$spinnerEnabled, (IMP*)&_logos_orig$_ungrouped$VMNPlayer$spinnerEnabled);}} }
#line 51 "Tweak.xm"
