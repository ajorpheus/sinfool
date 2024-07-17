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

@class RevMobAdFetcher; @class Chartboost; @class ALTaskRenderAd; @class AdManager; 
static Chartboost* (*_logos_orig$_ungrouped$Chartboost$init)(_LOGOS_SELF_TYPE_INIT Chartboost*, SEL) _LOGOS_RETURN_RETAINED; static Chartboost* _logos_method$_ungrouped$Chartboost$init(_LOGOS_SELF_TYPE_INIT Chartboost*, SEL) _LOGOS_RETURN_RETAINED; static RevMobAdFetcher* (*_logos_orig$_ungrouped$RevMobAdFetcher$init)(_LOGOS_SELF_TYPE_INIT RevMobAdFetcher*, SEL) _LOGOS_RETURN_RETAINED; static RevMobAdFetcher* _logos_method$_ungrouped$RevMobAdFetcher$init(_LOGOS_SELF_TYPE_INIT RevMobAdFetcher*, SEL) _LOGOS_RETURN_RETAINED; static AdManager* (*_logos_orig$_ungrouped$AdManager$init)(_LOGOS_SELF_TYPE_INIT AdManager*, SEL) _LOGOS_RETURN_RETAINED; static AdManager* _logos_method$_ungrouped$AdManager$init(_LOGOS_SELF_TYPE_INIT AdManager*, SEL) _LOGOS_RETURN_RETAINED; static id (*_logos_orig$_ungrouped$ALTaskRenderAd$cacheNonVideoResources$)(_LOGOS_SELF_TYPE_NORMAL ALTaskRenderAd* _LOGOS_SELF_CONST, SEL, id); static id _logos_method$_ungrouped$ALTaskRenderAd$cacheNonVideoResources$(_LOGOS_SELF_TYPE_NORMAL ALTaskRenderAd* _LOGOS_SELF_CONST, SEL, id); 

#line 3 "Tweak.xm"

static Chartboost* _logos_method$_ungrouped$Chartboost$init(_LOGOS_SELF_TYPE_INIT Chartboost* __unused self, SEL __unused _cmd) _LOGOS_RETURN_RETAINED {
    return NULL;
}



static RevMobAdFetcher* _logos_method$_ungrouped$RevMobAdFetcher$init(_LOGOS_SELF_TYPE_INIT RevMobAdFetcher* __unused self, SEL __unused _cmd) _LOGOS_RETURN_RETAINED {
    return NULL;
}



static AdManager* _logos_method$_ungrouped$AdManager$init(_LOGOS_SELF_TYPE_INIT AdManager* __unused self, SEL __unused _cmd) _LOGOS_RETURN_RETAINED {
    return NULL;
}



static id _logos_method$_ungrouped$ALTaskRenderAd$cacheNonVideoResources$(_LOGOS_SELF_TYPE_NORMAL ALTaskRenderAd* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    arg1 = NULL;
    return _logos_orig$_ungrouped$ALTaskRenderAd$cacheNonVideoResources$(self, _cmd, arg1);
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$Chartboost = objc_getClass("Chartboost"); { MSHookMessageEx(_logos_class$_ungrouped$Chartboost, @selector(init), (IMP)&_logos_method$_ungrouped$Chartboost$init, (IMP*)&_logos_orig$_ungrouped$Chartboost$init);}Class _logos_class$_ungrouped$RevMobAdFetcher = objc_getClass("RevMobAdFetcher"); { MSHookMessageEx(_logos_class$_ungrouped$RevMobAdFetcher, @selector(init), (IMP)&_logos_method$_ungrouped$RevMobAdFetcher$init, (IMP*)&_logos_orig$_ungrouped$RevMobAdFetcher$init);}Class _logos_class$_ungrouped$AdManager = objc_getClass("AdManager"); { MSHookMessageEx(_logos_class$_ungrouped$AdManager, @selector(init), (IMP)&_logos_method$_ungrouped$AdManager$init, (IMP*)&_logos_orig$_ungrouped$AdManager$init);}Class _logos_class$_ungrouped$ALTaskRenderAd = objc_getClass("ALTaskRenderAd"); { MSHookMessageEx(_logos_class$_ungrouped$ALTaskRenderAd, @selector(cacheNonVideoResources:), (IMP)&_logos_method$_ungrouped$ALTaskRenderAd$cacheNonVideoResources$, (IMP*)&_logos_orig$_ungrouped$ALTaskRenderAd$cacheNonVideoResources$);}} }
#line 28 "Tweak.xm"
