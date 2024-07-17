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

@class MPAdView; @class AdControl2; 
static unsigned char (*_logos_orig$_ungrouped$AdControl2$displayAd$)(_LOGOS_SELF_TYPE_NORMAL AdControl2* _LOGOS_SELF_CONST, SEL, unsigned char); static unsigned char _logos_method$_ungrouped$AdControl2$displayAd$(_LOGOS_SELF_TYPE_NORMAL AdControl2* _LOGOS_SELF_CONST, SEL, unsigned char); static id (*_logos_orig$_ungrouped$MPAdView$adManager)(_LOGOS_SELF_TYPE_NORMAL MPAdView* _LOGOS_SELF_CONST, SEL); static id _logos_method$_ungrouped$MPAdView$adManager(_LOGOS_SELF_TYPE_NORMAL MPAdView* _LOGOS_SELF_CONST, SEL); 

#line 3 "Tweak.xm"

static unsigned char _logos_method$_ungrouped$AdControl2$displayAd$(_LOGOS_SELF_TYPE_NORMAL AdControl2* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, unsigned char arg1) {
    return 0;
}



static id _logos_method$_ungrouped$MPAdView$adManager(_LOGOS_SELF_TYPE_NORMAL MPAdView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return NULL;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$AdControl2 = objc_getClass("AdControl2"); { MSHookMessageEx(_logos_class$_ungrouped$AdControl2, @selector(displayAd:), (IMP)&_logos_method$_ungrouped$AdControl2$displayAd$, (IMP*)&_logos_orig$_ungrouped$AdControl2$displayAd$);}Class _logos_class$_ungrouped$MPAdView = objc_getClass("MPAdView"); { MSHookMessageEx(_logos_class$_ungrouped$MPAdView, @selector(adManager), (IMP)&_logos_method$_ungrouped$MPAdView$adManager, (IMP*)&_logos_orig$_ungrouped$MPAdView$adManager);}} }
#line 15 "Tweak.xm"
