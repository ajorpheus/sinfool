#import <UIKit/UIKit.h>

#include <substrate.h>

static id (*_orig_ftt_meth_$AWESplashScreenViewController$initWithSplashAnimated$presentationType$delegate$dataSource$)(id, SEL, BOOL, unsigned int, id, id);
static id _patched_ftt_meth_$AWESplashScreenViewController$initWithSplashAnimated$presentationType$delegate$dataSource$(id self, SEL _cmd, BOOL arg1, unsigned int arg2, id arg3, id arg4) {
    arg2 = 0;
    return _orig_ftt_meth_$AWESplashScreenViewController$initWithSplashAnimated$presentationType$delegate$dataSource$(self, _cmd, arg1, arg2, arg3, arg4);
}

static int _patched_ftt_meth_$ENTAppDelegate_iPhone$splashScreenAnimatedImageCount$(id self, SEL _cmd, id arg1) {
    return 0;
}

static int _patched_ftt_meth_$ENTAppDelegate_iPad$splashScreenAnimatedImageCount$(id self, SEL _cmd, id arg1) {
    return 0;
}

static double _patched_ftt_meth_$ENTAppDelegate_iPhone$splashScreenDuration$(id self, SEL _cmd, id arg1) {
    return 0;
}

static double _patched_ftt_meth_$ENTAppDelegate_iPad$splashScreenDuration$(id self, SEL _cmd, id arg1) {
    return 0;
}

static id _patched_ftt_meth_$GADAdFetcher$init(id self, SEL _cmd) {
    return NULL;
}

static unsigned int _patched_ftt_meth_$FWAd$adId(id self, SEL _cmd) {
    return 0;
}

static id (*_orig_ftt_meth_$AWEVideoViewBottomAdBar$initWithCoder$)(id, SEL, id);
static id _patched_ftt_meth_$AWEVideoViewBottomAdBar$initWithCoder$(id self, SEL _cmd, id arg1) {
    arg1 = NULL;
    return _orig_ftt_meth_$AWEVideoViewBottomAdBar$initWithCoder$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_AWESplashScreenViewController = objc_getClass("AWESplashScreenViewController");
    MSHookMessageEx(_ftt_class_AWESplashScreenViewController, @selector(initWithSplashAnimated:presentationType:delegate:dataSource:), (IMP)_patched_ftt_meth_$AWESplashScreenViewController$initWithSplashAnimated$presentationType$delegate$dataSource$, (IMP *)_orig_ftt_meth_$AWESplashScreenViewController$initWithSplashAnimated$presentationType$delegate$dataSource$);
    Class _ftt_class_ENTAppDelegate_iPhone = objc_getClass("ENTAppDelegate_iPhone");
    MSHookMessageEx(_ftt_class_ENTAppDelegate_iPhone, @selector(splashScreenAnimatedImageCount:), (IMP)_patched_ftt_meth_$ENTAppDelegate_iPhone$splashScreenAnimatedImageCount$, NULL);
    Class _ftt_class_ENTAppDelegate_iPad = objc_getClass("ENTAppDelegate_iPad");
    MSHookMessageEx(_ftt_class_ENTAppDelegate_iPad, @selector(splashScreenAnimatedImageCount:), (IMP)_patched_ftt_meth_$ENTAppDelegate_iPad$splashScreenAnimatedImageCount$, NULL);
    MSHookMessageEx(_ftt_class_ENTAppDelegate_iPhone, @selector(splashScreenDuration:), (IMP)_patched_ftt_meth_$ENTAppDelegate_iPhone$splashScreenDuration$, NULL);
    MSHookMessageEx(_ftt_class_ENTAppDelegate_iPad, @selector(splashScreenDuration:), (IMP)_patched_ftt_meth_$ENTAppDelegate_iPad$splashScreenDuration$, NULL);
    Class _ftt_class_GADAdFetcher = objc_getClass("GADAdFetcher");
    MSHookMessageEx(_ftt_class_GADAdFetcher, @selector(init), (IMP)_patched_ftt_meth_$GADAdFetcher$init, NULL);
    Class _ftt_class_FWAd = objc_getClass("FWAd");
    MSHookMessageEx(_ftt_class_FWAd, @selector(adId), (IMP)_patched_ftt_meth_$FWAd$adId, NULL);
    Class _ftt_class_AWEVideoViewBottomAdBar = objc_getClass("AWEVideoViewBottomAdBar");
    MSHookMessageEx(_ftt_class_AWEVideoViewBottomAdBar, @selector(initWithCoder:), (IMP)_patched_ftt_meth_$AWEVideoViewBottomAdBar$initWithCoder$, (IMP *)_orig_ftt_meth_$AWEVideoViewBottomAdBar$initWithCoder$);
}
