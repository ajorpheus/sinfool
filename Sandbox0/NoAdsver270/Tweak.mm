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

@class ADCZone; @class GADAdFetcher; 
static bool (*_logos_orig$_ungrouped$ADCZone$hasAdsOfType$)(_LOGOS_SELF_TYPE_NORMAL ADCZone* _LOGOS_SELF_CONST, SEL, long long); static bool _logos_method$_ungrouped$ADCZone$hasAdsOfType$(_LOGOS_SELF_TYPE_NORMAL ADCZone* _LOGOS_SELF_CONST, SEL, long long); static GADAdFetcher* (*_logos_orig$_ungrouped$GADAdFetcher$init)(_LOGOS_SELF_TYPE_INIT GADAdFetcher*, SEL) _LOGOS_RETURN_RETAINED; static GADAdFetcher* _logos_method$_ungrouped$GADAdFetcher$init(_LOGOS_SELF_TYPE_INIT GADAdFetcher*, SEL) _LOGOS_RETURN_RETAINED; 

#line 3 "Tweak.xm"

static bool _logos_method$_ungrouped$ADCZone$hasAdsOfType$(_LOGOS_SELF_TYPE_NORMAL ADCZone* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, long long arg1) {
    
    return 0;
}



static GADAdFetcher* _logos_method$_ungrouped$GADAdFetcher$init(_LOGOS_SELF_TYPE_INIT GADAdFetcher* __unused self, SEL __unused _cmd) _LOGOS_RETURN_RETAINED {
    
    return NULL;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$ADCZone = objc_getClass("ADCZone"); { MSHookMessageEx(_logos_class$_ungrouped$ADCZone, @selector(hasAdsOfType:), (IMP)&_logos_method$_ungrouped$ADCZone$hasAdsOfType$, (IMP*)&_logos_orig$_ungrouped$ADCZone$hasAdsOfType$);}Class _logos_class$_ungrouped$GADAdFetcher = objc_getClass("GADAdFetcher"); { MSHookMessageEx(_logos_class$_ungrouped$GADAdFetcher, @selector(init), (IMP)&_logos_method$_ungrouped$GADAdFetcher$init, (IMP*)&_logos_orig$_ungrouped$GADAdFetcher$init);}} }
#line 17 "Tweak.xm"
