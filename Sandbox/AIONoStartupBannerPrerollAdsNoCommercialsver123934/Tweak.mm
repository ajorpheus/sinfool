#import <UIKit/UIKit.h>

#include <substrate.h>

static id (*_orig_ftt_meth_$CWSplashScreenStaticImage$initRemoteImageWithDuration$)(id, SEL, unsigned int);
static id _patched_ftt_meth_$CWSplashScreenStaticImage$initRemoteImageWithDuration$(id self, SEL _cmd, unsigned int arg1) {
    arg1 = 0;
    return _orig_ftt_meth_$CWSplashScreenStaticImage$initRemoteImageWithDuration$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$GADBannerView$setAdSize$andReload$)(id, SEL, GADAdSize, BOOL);
static void _patched_ftt_meth_$GADBannerView$setAdSize$andReload$(id self, SEL _cmd, GADAdSize arg1, BOOL arg2) {
    arg2 = 0;
    _orig_ftt_meth_$GADBannerView$setAdSize$andReload$(self, _cmd, arg1, arg2);
}

static unsigned char _patched_ftt_meth_$com_ds_ads_AdManager$getCanPlayPreroll(id self, SEL _cmd) {
    return 0;
}

static int _patched_ftt_meth_$com_ds_metadata_AdBreak$getStartTime(id self, SEL _cmd) {
    return 999999;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_CWSplashScreenStaticImage = objc_getClass("CWSplashScreenStaticImage");
    MSHookMessageEx(_ftt_class_CWSplashScreenStaticImage, @selector(initRemoteImageWithDuration:), (IMP)_patched_ftt_meth_$CWSplashScreenStaticImage$initRemoteImageWithDuration$, (IMP *)_orig_ftt_meth_$CWSplashScreenStaticImage$initRemoteImageWithDuration$);
    Class _ftt_class_GADBannerView = objc_getClass("GADBannerView");
    MSHookMessageEx(_ftt_class_GADBannerView, @selector(setAdSize:andReload:), (IMP)_patched_ftt_meth_$GADBannerView$setAdSize$andReload$, (IMP *)_orig_ftt_meth_$GADBannerView$setAdSize$andReload$);
    Class _ftt_class_com_ds_ads_AdManager = objc_getClass("com_ds_ads_AdManager");
    MSHookMessageEx(_ftt_class_com_ds_ads_AdManager, @selector(getCanPlayPreroll), (IMP)_patched_ftt_meth_$com_ds_ads_AdManager$getCanPlayPreroll, NULL);
    Class _ftt_class_com_ds_metadata_AdBreak = objc_getClass("com_ds_metadata_AdBreak");
    MSHookMessageEx(_ftt_class_com_ds_metadata_AdBreak, @selector(getStartTime), (IMP)_patched_ftt_meth_$com_ds_metadata_AdBreak$getStartTime, NULL);
}
