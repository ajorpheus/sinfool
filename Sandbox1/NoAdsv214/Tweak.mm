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

@class GADAdFetcher; @class ChartBoostManager; 
static ChartBoostManager* (*_logos_orig$_ungrouped$ChartBoostManager$init)(_LOGOS_SELF_TYPE_INIT ChartBoostManager*, SEL) _LOGOS_RETURN_RETAINED; static ChartBoostManager* _logos_method$_ungrouped$ChartBoostManager$init(_LOGOS_SELF_TYPE_INIT ChartBoostManager*, SEL) _LOGOS_RETURN_RETAINED; static GADAdFetcher* (*_logos_orig$_ungrouped$GADAdFetcher$init)(_LOGOS_SELF_TYPE_INIT GADAdFetcher*, SEL) _LOGOS_RETURN_RETAINED; static GADAdFetcher* _logos_method$_ungrouped$GADAdFetcher$init(_LOGOS_SELF_TYPE_INIT GADAdFetcher*, SEL) _LOGOS_RETURN_RETAINED; 

#line 3 "Tweak.xm"

static ChartBoostManager* _logos_method$_ungrouped$ChartBoostManager$init(_LOGOS_SELF_TYPE_INIT ChartBoostManager* __unused self, SEL __unused _cmd) _LOGOS_RETURN_RETAINED {
    return NULL;
}



static GADAdFetcher* _logos_method$_ungrouped$GADAdFetcher$init(_LOGOS_SELF_TYPE_INIT GADAdFetcher* __unused self, SEL __unused _cmd) _LOGOS_RETURN_RETAINED {
    return NULL;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$ChartBoostManager = objc_getClass("ChartBoostManager"); { MSHookMessageEx(_logos_class$_ungrouped$ChartBoostManager, @selector(init), (IMP)&_logos_method$_ungrouped$ChartBoostManager$init, (IMP*)&_logos_orig$_ungrouped$ChartBoostManager$init);}Class _logos_class$_ungrouped$GADAdFetcher = objc_getClass("GADAdFetcher"); { MSHookMessageEx(_logos_class$_ungrouped$GADAdFetcher, @selector(init), (IMP)&_logos_method$_ungrouped$GADAdFetcher$init, (IMP*)&_logos_orig$_ungrouped$GADAdFetcher$init);}} }
#line 15 "Tweak.xm"
