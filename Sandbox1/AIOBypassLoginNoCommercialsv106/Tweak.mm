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

@class CCTVEManager; @class FWAd; 
static unsigned long long (*_logos_orig$_ungrouped$FWAd$adId)(_LOGOS_SELF_TYPE_NORMAL FWAd* _LOGOS_SELF_CONST, SEL); static unsigned long long _logos_method$_ungrouped$FWAd$adId(_LOGOS_SELF_TYPE_NORMAL FWAd* _LOGOS_SELF_CONST, SEL); static bool (*_logos_orig$_ungrouped$CCTVEManager$videoIsAuthorized$)(_LOGOS_SELF_TYPE_NORMAL CCTVEManager* _LOGOS_SELF_CONST, SEL, id); static bool _logos_method$_ungrouped$CCTVEManager$videoIsAuthorized$(_LOGOS_SELF_TYPE_NORMAL CCTVEManager* _LOGOS_SELF_CONST, SEL, id); 

#line 3 "Tweak.xm"

static unsigned long long _logos_method$_ungrouped$FWAd$adId(_LOGOS_SELF_TYPE_NORMAL FWAd* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 0;
}



static bool _logos_method$_ungrouped$CCTVEManager$videoIsAuthorized$(_LOGOS_SELF_TYPE_NORMAL CCTVEManager* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    return 1;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$FWAd = objc_getClass("FWAd"); { MSHookMessageEx(_logos_class$_ungrouped$FWAd, @selector(adId), (IMP)&_logos_method$_ungrouped$FWAd$adId, (IMP*)&_logos_orig$_ungrouped$FWAd$adId);}Class _logos_class$_ungrouped$CCTVEManager = objc_getClass("CCTVEManager"); { MSHookMessageEx(_logos_class$_ungrouped$CCTVEManager, @selector(videoIsAuthorized:), (IMP)&_logos_method$_ungrouped$CCTVEManager$videoIsAuthorized$, (IMP*)&_logos_orig$_ungrouped$CCTVEManager$videoIsAuthorized$);}} }
#line 15 "Tweak.xm"
