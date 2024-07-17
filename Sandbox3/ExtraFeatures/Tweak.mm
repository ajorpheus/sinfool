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

@class aaHurricaneProPurchase; @class aaAds; @class aaWarningsProPurchase; @class aaADPurchase; @class aaHurricanes; @class aaRater; @class aaWarnings; 
static BOOL (*_logos_orig$_ungrouped$aaAds$enabled)(_LOGOS_SELF_TYPE_NORMAL aaAds* _LOGOS_SELF_CONST, SEL); static BOOL _logos_method$_ungrouped$aaAds$enabled(_LOGOS_SELF_TYPE_NORMAL aaAds* _LOGOS_SELF_CONST, SEL); static BOOL (*_logos_orig$_ungrouped$aaADPurchase$purchased)(_LOGOS_SELF_TYPE_NORMAL aaADPurchase* _LOGOS_SELF_CONST, SEL); static BOOL _logos_method$_ungrouped$aaADPurchase$purchased(_LOGOS_SELF_TYPE_NORMAL aaADPurchase* _LOGOS_SELF_CONST, SEL); static BOOL (*_logos_orig$_ungrouped$aaHurricanes$enabled)(_LOGOS_SELF_TYPE_NORMAL aaHurricanes* _LOGOS_SELF_CONST, SEL); static BOOL _logos_method$_ungrouped$aaHurricanes$enabled(_LOGOS_SELF_TYPE_NORMAL aaHurricanes* _LOGOS_SELF_CONST, SEL); static BOOL (*_logos_orig$_ungrouped$aaHurricaneProPurchase$purchased)(_LOGOS_SELF_TYPE_NORMAL aaHurricaneProPurchase* _LOGOS_SELF_CONST, SEL); static BOOL _logos_method$_ungrouped$aaHurricaneProPurchase$purchased(_LOGOS_SELF_TYPE_NORMAL aaHurricaneProPurchase* _LOGOS_SELF_CONST, SEL); static BOOL (*_logos_orig$_ungrouped$aaWarnings$enabled)(_LOGOS_SELF_TYPE_NORMAL aaWarnings* _LOGOS_SELF_CONST, SEL); static BOOL _logos_method$_ungrouped$aaWarnings$enabled(_LOGOS_SELF_TYPE_NORMAL aaWarnings* _LOGOS_SELF_CONST, SEL); static BOOL (*_logos_orig$_ungrouped$aaWarningsProPurchase$purchased)(_LOGOS_SELF_TYPE_NORMAL aaWarningsProPurchase* _LOGOS_SELF_CONST, SEL); static BOOL _logos_method$_ungrouped$aaWarningsProPurchase$purchased(_LOGOS_SELF_TYPE_NORMAL aaWarningsProPurchase* _LOGOS_SELF_CONST, SEL); static id (*_logos_orig$_ungrouped$aaRater$alert)(_LOGOS_SELF_TYPE_NORMAL aaRater* _LOGOS_SELF_CONST, SEL); static id _logos_method$_ungrouped$aaRater$alert(_LOGOS_SELF_TYPE_NORMAL aaRater* _LOGOS_SELF_CONST, SEL); 

#line 3 "Tweak.xm"

static BOOL _logos_method$_ungrouped$aaAds$enabled(_LOGOS_SELF_TYPE_NORMAL aaAds* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 0;
}



static BOOL _logos_method$_ungrouped$aaADPurchase$purchased(_LOGOS_SELF_TYPE_NORMAL aaADPurchase* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 1;
}



static BOOL _logos_method$_ungrouped$aaHurricanes$enabled(_LOGOS_SELF_TYPE_NORMAL aaHurricanes* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 1;
}



static BOOL _logos_method$_ungrouped$aaHurricaneProPurchase$purchased(_LOGOS_SELF_TYPE_NORMAL aaHurricaneProPurchase* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 1;
}



static BOOL _logos_method$_ungrouped$aaWarnings$enabled(_LOGOS_SELF_TYPE_NORMAL aaWarnings* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 1;
}



static BOOL _logos_method$_ungrouped$aaWarningsProPurchase$purchased(_LOGOS_SELF_TYPE_NORMAL aaWarningsProPurchase* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 1;
}



static id _logos_method$_ungrouped$aaRater$alert(_LOGOS_SELF_TYPE_NORMAL aaRater* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return NULL;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$aaAds = objc_getClass("aaAds"); { MSHookMessageEx(_logos_class$_ungrouped$aaAds, @selector(enabled), (IMP)&_logos_method$_ungrouped$aaAds$enabled, (IMP*)&_logos_orig$_ungrouped$aaAds$enabled);}Class _logos_class$_ungrouped$aaADPurchase = objc_getClass("aaADPurchase"); { MSHookMessageEx(_logos_class$_ungrouped$aaADPurchase, @selector(purchased), (IMP)&_logos_method$_ungrouped$aaADPurchase$purchased, (IMP*)&_logos_orig$_ungrouped$aaADPurchase$purchased);}Class _logos_class$_ungrouped$aaHurricanes = objc_getClass("aaHurricanes"); { MSHookMessageEx(_logos_class$_ungrouped$aaHurricanes, @selector(enabled), (IMP)&_logos_method$_ungrouped$aaHurricanes$enabled, (IMP*)&_logos_orig$_ungrouped$aaHurricanes$enabled);}Class _logos_class$_ungrouped$aaHurricaneProPurchase = objc_getClass("aaHurricaneProPurchase"); { MSHookMessageEx(_logos_class$_ungrouped$aaHurricaneProPurchase, @selector(purchased), (IMP)&_logos_method$_ungrouped$aaHurricaneProPurchase$purchased, (IMP*)&_logos_orig$_ungrouped$aaHurricaneProPurchase$purchased);}Class _logos_class$_ungrouped$aaWarnings = objc_getClass("aaWarnings"); { MSHookMessageEx(_logos_class$_ungrouped$aaWarnings, @selector(enabled), (IMP)&_logos_method$_ungrouped$aaWarnings$enabled, (IMP*)&_logos_orig$_ungrouped$aaWarnings$enabled);}Class _logos_class$_ungrouped$aaWarningsProPurchase = objc_getClass("aaWarningsProPurchase"); { MSHookMessageEx(_logos_class$_ungrouped$aaWarningsProPurchase, @selector(purchased), (IMP)&_logos_method$_ungrouped$aaWarningsProPurchase$purchased, (IMP*)&_logos_orig$_ungrouped$aaWarningsProPurchase$purchased);}Class _logos_class$_ungrouped$aaRater = objc_getClass("aaRater"); { MSHookMessageEx(_logos_class$_ungrouped$aaRater, @selector(alert), (IMP)&_logos_method$_ungrouped$aaRater$alert, (IMP*)&_logos_orig$_ungrouped$aaRater$alert);}} }
#line 52 "Tweak.xm"
