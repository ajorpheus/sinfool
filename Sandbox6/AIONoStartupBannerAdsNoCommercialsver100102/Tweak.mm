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

@class AWESplashScreenViewController; @class FWAd; @class ENTAppDelegate_iPad; @class GADAdFetcher; @class AWEVideoViewBottomAdBar; @class ENTAppDelegate_iPhone; 
static AWESplashScreenViewController* (*_logos_orig$_ungrouped$AWESplashScreenViewController$initWithSplashAnimated$presentationType$delegate$dataSource$)(_LOGOS_SELF_TYPE_INIT AWESplashScreenViewController*, SEL, BOOL, unsigned int, id, id) _LOGOS_RETURN_RETAINED; static AWESplashScreenViewController* _logos_method$_ungrouped$AWESplashScreenViewController$initWithSplashAnimated$presentationType$delegate$dataSource$(_LOGOS_SELF_TYPE_INIT AWESplashScreenViewController*, SEL, BOOL, unsigned int, id, id) _LOGOS_RETURN_RETAINED; static int (*_logos_orig$_ungrouped$ENTAppDelegate_iPhone$splashScreenAnimatedImageCount$)(_LOGOS_SELF_TYPE_NORMAL ENTAppDelegate_iPhone* _LOGOS_SELF_CONST, SEL, id); static int _logos_method$_ungrouped$ENTAppDelegate_iPhone$splashScreenAnimatedImageCount$(_LOGOS_SELF_TYPE_NORMAL ENTAppDelegate_iPhone* _LOGOS_SELF_CONST, SEL, id); static double (*_logos_orig$_ungrouped$ENTAppDelegate_iPhone$splashScreenDuration$)(_LOGOS_SELF_TYPE_NORMAL ENTAppDelegate_iPhone* _LOGOS_SELF_CONST, SEL, id); static double _logos_method$_ungrouped$ENTAppDelegate_iPhone$splashScreenDuration$(_LOGOS_SELF_TYPE_NORMAL ENTAppDelegate_iPhone* _LOGOS_SELF_CONST, SEL, id); static int (*_logos_orig$_ungrouped$ENTAppDelegate_iPad$splashScreenAnimatedImageCount$)(_LOGOS_SELF_TYPE_NORMAL ENTAppDelegate_iPad* _LOGOS_SELF_CONST, SEL, id); static int _logos_method$_ungrouped$ENTAppDelegate_iPad$splashScreenAnimatedImageCount$(_LOGOS_SELF_TYPE_NORMAL ENTAppDelegate_iPad* _LOGOS_SELF_CONST, SEL, id); static double (*_logos_orig$_ungrouped$ENTAppDelegate_iPad$splashScreenDuration$)(_LOGOS_SELF_TYPE_NORMAL ENTAppDelegate_iPad* _LOGOS_SELF_CONST, SEL, id); static double _logos_method$_ungrouped$ENTAppDelegate_iPad$splashScreenDuration$(_LOGOS_SELF_TYPE_NORMAL ENTAppDelegate_iPad* _LOGOS_SELF_CONST, SEL, id); static GADAdFetcher* (*_logos_orig$_ungrouped$GADAdFetcher$init)(_LOGOS_SELF_TYPE_INIT GADAdFetcher*, SEL) _LOGOS_RETURN_RETAINED; static GADAdFetcher* _logos_method$_ungrouped$GADAdFetcher$init(_LOGOS_SELF_TYPE_INIT GADAdFetcher*, SEL) _LOGOS_RETURN_RETAINED; static unsigned int (*_logos_orig$_ungrouped$FWAd$adId)(_LOGOS_SELF_TYPE_NORMAL FWAd* _LOGOS_SELF_CONST, SEL); static unsigned int _logos_method$_ungrouped$FWAd$adId(_LOGOS_SELF_TYPE_NORMAL FWAd* _LOGOS_SELF_CONST, SEL); static AWEVideoViewBottomAdBar* (*_logos_orig$_ungrouped$AWEVideoViewBottomAdBar$initWithCoder$)(_LOGOS_SELF_TYPE_INIT AWEVideoViewBottomAdBar*, SEL, id) _LOGOS_RETURN_RETAINED; static AWEVideoViewBottomAdBar* _logos_method$_ungrouped$AWEVideoViewBottomAdBar$initWithCoder$(_LOGOS_SELF_TYPE_INIT AWEVideoViewBottomAdBar*, SEL, id) _LOGOS_RETURN_RETAINED; 

#line 3 "Tweak.xm"

static AWESplashScreenViewController* _logos_method$_ungrouped$AWESplashScreenViewController$initWithSplashAnimated$presentationType$delegate$dataSource$(_LOGOS_SELF_TYPE_INIT AWESplashScreenViewController* __unused self, SEL __unused _cmd, BOOL arg1, unsigned int arg2, id arg3, id arg4) _LOGOS_RETURN_RETAINED {
    arg2 = 0;
    return _logos_orig$_ungrouped$AWESplashScreenViewController$initWithSplashAnimated$presentationType$delegate$dataSource$(self, _cmd, arg1, arg2, arg3, arg4);
}



static int _logos_method$_ungrouped$ENTAppDelegate_iPhone$splashScreenAnimatedImageCount$(_LOGOS_SELF_TYPE_NORMAL ENTAppDelegate_iPhone* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    return 0;
}



static int _logos_method$_ungrouped$ENTAppDelegate_iPad$splashScreenAnimatedImageCount$(_LOGOS_SELF_TYPE_NORMAL ENTAppDelegate_iPad* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    return 0;
}



static double _logos_method$_ungrouped$ENTAppDelegate_iPhone$splashScreenDuration$(_LOGOS_SELF_TYPE_NORMAL ENTAppDelegate_iPhone* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    return 0;
}



static double _logos_method$_ungrouped$ENTAppDelegate_iPad$splashScreenDuration$(_LOGOS_SELF_TYPE_NORMAL ENTAppDelegate_iPad* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    return 0;
}



static GADAdFetcher* _logos_method$_ungrouped$GADAdFetcher$init(_LOGOS_SELF_TYPE_INIT GADAdFetcher* __unused self, SEL __unused _cmd) _LOGOS_RETURN_RETAINED {
    return NULL;
}



static unsigned int _logos_method$_ungrouped$FWAd$adId(_LOGOS_SELF_TYPE_NORMAL FWAd* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 0;
}



static AWEVideoViewBottomAdBar* _logos_method$_ungrouped$AWEVideoViewBottomAdBar$initWithCoder$(_LOGOS_SELF_TYPE_INIT AWEVideoViewBottomAdBar* __unused self, SEL __unused _cmd, id arg1) _LOGOS_RETURN_RETAINED {
    arg1 = NULL;
    return _logos_orig$_ungrouped$AWEVideoViewBottomAdBar$initWithCoder$(self, _cmd, arg1);
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$AWESplashScreenViewController = objc_getClass("AWESplashScreenViewController"); { MSHookMessageEx(_logos_class$_ungrouped$AWESplashScreenViewController, @selector(initWithSplashAnimated:presentationType:delegate:dataSource:), (IMP)&_logos_method$_ungrouped$AWESplashScreenViewController$initWithSplashAnimated$presentationType$delegate$dataSource$, (IMP*)&_logos_orig$_ungrouped$AWESplashScreenViewController$initWithSplashAnimated$presentationType$delegate$dataSource$);}Class _logos_class$_ungrouped$ENTAppDelegate_iPhone = objc_getClass("ENTAppDelegate_iPhone"); { MSHookMessageEx(_logos_class$_ungrouped$ENTAppDelegate_iPhone, @selector(splashScreenAnimatedImageCount:), (IMP)&_logos_method$_ungrouped$ENTAppDelegate_iPhone$splashScreenAnimatedImageCount$, (IMP*)&_logos_orig$_ungrouped$ENTAppDelegate_iPhone$splashScreenAnimatedImageCount$);}{ MSHookMessageEx(_logos_class$_ungrouped$ENTAppDelegate_iPhone, @selector(splashScreenDuration:), (IMP)&_logos_method$_ungrouped$ENTAppDelegate_iPhone$splashScreenDuration$, (IMP*)&_logos_orig$_ungrouped$ENTAppDelegate_iPhone$splashScreenDuration$);}Class _logos_class$_ungrouped$ENTAppDelegate_iPad = objc_getClass("ENTAppDelegate_iPad"); { MSHookMessageEx(_logos_class$_ungrouped$ENTAppDelegate_iPad, @selector(splashScreenAnimatedImageCount:), (IMP)&_logos_method$_ungrouped$ENTAppDelegate_iPad$splashScreenAnimatedImageCount$, (IMP*)&_logos_orig$_ungrouped$ENTAppDelegate_iPad$splashScreenAnimatedImageCount$);}{ MSHookMessageEx(_logos_class$_ungrouped$ENTAppDelegate_iPad, @selector(splashScreenDuration:), (IMP)&_logos_method$_ungrouped$ENTAppDelegate_iPad$splashScreenDuration$, (IMP*)&_logos_orig$_ungrouped$ENTAppDelegate_iPad$splashScreenDuration$);}Class _logos_class$_ungrouped$GADAdFetcher = objc_getClass("GADAdFetcher"); { MSHookMessageEx(_logos_class$_ungrouped$GADAdFetcher, @selector(init), (IMP)&_logos_method$_ungrouped$GADAdFetcher$init, (IMP*)&_logos_orig$_ungrouped$GADAdFetcher$init);}Class _logos_class$_ungrouped$FWAd = objc_getClass("FWAd"); { MSHookMessageEx(_logos_class$_ungrouped$FWAd, @selector(adId), (IMP)&_logos_method$_ungrouped$FWAd$adId, (IMP*)&_logos_orig$_ungrouped$FWAd$adId);}Class _logos_class$_ungrouped$AWEVideoViewBottomAdBar = objc_getClass("AWEVideoViewBottomAdBar"); { MSHookMessageEx(_logos_class$_ungrouped$AWEVideoViewBottomAdBar, @selector(initWithCoder:), (IMP)&_logos_method$_ungrouped$AWEVideoViewBottomAdBar$initWithCoder$, (IMP*)&_logos_orig$_ungrouped$AWEVideoViewBottomAdBar$initWithCoder$);}} }
#line 53 "Tweak.xm"
