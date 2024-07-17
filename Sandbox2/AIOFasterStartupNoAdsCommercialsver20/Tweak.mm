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

@class BETSplashScreenViewController; @class BETVideoPlayerAdManagerDART; @class GADAdFetcher; 
static BOOL (*_logos_orig$_ungrouped$BETSplashScreenViewController$isVideoFinished)(_LOGOS_SELF_TYPE_NORMAL BETSplashScreenViewController* _LOGOS_SELF_CONST, SEL); static BOOL _logos_method$_ungrouped$BETSplashScreenViewController$isVideoFinished(_LOGOS_SELF_TYPE_NORMAL BETSplashScreenViewController* _LOGOS_SELF_CONST, SEL); static GADAdFetcher* (*_logos_orig$_ungrouped$GADAdFetcher$init)(_LOGOS_SELF_TYPE_INIT GADAdFetcher*, SEL) _LOGOS_RETURN_RETAINED; static GADAdFetcher* _logos_method$_ungrouped$GADAdFetcher$init(_LOGOS_SELF_TYPE_INIT GADAdFetcher*, SEL) _LOGOS_RETURN_RETAINED; static id (*_logos_orig$_ungrouped$BETVideoPlayerAdManagerDART$adsManager)(_LOGOS_SELF_TYPE_NORMAL BETVideoPlayerAdManagerDART* _LOGOS_SELF_CONST, SEL); static id _logos_method$_ungrouped$BETVideoPlayerAdManagerDART$adsManager(_LOGOS_SELF_TYPE_NORMAL BETVideoPlayerAdManagerDART* _LOGOS_SELF_CONST, SEL); 

#line 3 "Tweak.xm"

static BOOL _logos_method$_ungrouped$BETSplashScreenViewController$isVideoFinished(_LOGOS_SELF_TYPE_NORMAL BETSplashScreenViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 1;
}



static GADAdFetcher* _logos_method$_ungrouped$GADAdFetcher$init(_LOGOS_SELF_TYPE_INIT GADAdFetcher* __unused self, SEL __unused _cmd) _LOGOS_RETURN_RETAINED {
    return NULL;
}



static id _logos_method$_ungrouped$BETVideoPlayerAdManagerDART$adsManager(_LOGOS_SELF_TYPE_NORMAL BETVideoPlayerAdManagerDART* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return NULL;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$BETSplashScreenViewController = objc_getClass("BETSplashScreenViewController"); { MSHookMessageEx(_logos_class$_ungrouped$BETSplashScreenViewController, @selector(isVideoFinished), (IMP)&_logos_method$_ungrouped$BETSplashScreenViewController$isVideoFinished, (IMP*)&_logos_orig$_ungrouped$BETSplashScreenViewController$isVideoFinished);}Class _logos_class$_ungrouped$GADAdFetcher = objc_getClass("GADAdFetcher"); { MSHookMessageEx(_logos_class$_ungrouped$GADAdFetcher, @selector(init), (IMP)&_logos_method$_ungrouped$GADAdFetcher$init, (IMP*)&_logos_orig$_ungrouped$GADAdFetcher$init);}Class _logos_class$_ungrouped$BETVideoPlayerAdManagerDART = objc_getClass("BETVideoPlayerAdManagerDART"); { MSHookMessageEx(_logos_class$_ungrouped$BETVideoPlayerAdManagerDART, @selector(adsManager), (IMP)&_logos_method$_ungrouped$BETVideoPlayerAdManagerDART$adsManager, (IMP*)&_logos_orig$_ungrouped$BETVideoPlayerAdManagerDART$adsManager);}} }
#line 21 "Tweak.xm"
