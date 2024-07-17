#import <UIKit/UIKit.h>

#include <substrate.h>

static id _patched_ftt_meth_$Chartboost$init(id self, SEL _cmd) {
    return NULL;
}

static id _patched_ftt_meth_$RevMobAdFetcher$init(id self, SEL _cmd) {
    return NULL;
}

static id _patched_ftt_meth_$AdManager$init(id self, SEL _cmd) {
    return NULL;
}

static id (*_orig_ftt_meth_$ALTaskRenderAd$cacheNonVideoResources$)(id, SEL, id);
static id _patched_ftt_meth_$ALTaskRenderAd$cacheNonVideoResources$(id self, SEL _cmd, id arg1) {
    arg1 = NULL;
    return _orig_ftt_meth_$ALTaskRenderAd$cacheNonVideoResources$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_Chartboost = objc_getClass("Chartboost");
    MSHookMessageEx(_ftt_class_Chartboost, @selector(init), (IMP)_patched_ftt_meth_$Chartboost$init, NULL);
    Class _ftt_class_RevMobAdFetcher = objc_getClass("RevMobAdFetcher");
    MSHookMessageEx(_ftt_class_RevMobAdFetcher, @selector(init), (IMP)_patched_ftt_meth_$RevMobAdFetcher$init, NULL);
    Class _ftt_class_AdManager = objc_getClass("AdManager");
    MSHookMessageEx(_ftt_class_AdManager, @selector(init), (IMP)_patched_ftt_meth_$AdManager$init, NULL);
    Class _ftt_class_ALTaskRenderAd = objc_getClass("ALTaskRenderAd");
    MSHookMessageEx(_ftt_class_ALTaskRenderAd, @selector(cacheNonVideoResources:), (IMP)_patched_ftt_meth_$ALTaskRenderAd$cacheNonVideoResources$, (IMP *)_orig_ftt_meth_$ALTaskRenderAd$cacheNonVideoResources$);
}
