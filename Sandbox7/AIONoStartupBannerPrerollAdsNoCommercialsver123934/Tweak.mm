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

@class com_ds_ads_AdManager; @class CWSplashScreenStaticImage; @class com_ds_metadata_AdBreak; @class GADBannerView; 
static CWSplashScreenStaticImage* (*_logos_orig$_ungrouped$CWSplashScreenStaticImage$initRemoteImageWithDuration$)(_LOGOS_SELF_TYPE_INIT CWSplashScreenStaticImage*, SEL, unsigned int) _LOGOS_RETURN_RETAINED; static CWSplashScreenStaticImage* _logos_method$_ungrouped$CWSplashScreenStaticImage$initRemoteImageWithDuration$(_LOGOS_SELF_TYPE_INIT CWSplashScreenStaticImage*, SEL, unsigned int) _LOGOS_RETURN_RETAINED; static void (*_logos_orig$_ungrouped$GADBannerView$setAdSize$andReload$)(_LOGOS_SELF_TYPE_NORMAL GADBannerView* _LOGOS_SELF_CONST, SEL, GADAdSize, BOOL); static void _logos_method$_ungrouped$GADBannerView$setAdSize$andReload$(_LOGOS_SELF_TYPE_NORMAL GADBannerView* _LOGOS_SELF_CONST, SEL, GADAdSize, BOOL); static unsigned char (*_logos_orig$_ungrouped$com_ds_ads_AdManager$getCanPlayPreroll)(_LOGOS_SELF_TYPE_NORMAL com_ds_ads_AdManager* _LOGOS_SELF_CONST, SEL); static unsigned char _logos_method$_ungrouped$com_ds_ads_AdManager$getCanPlayPreroll(_LOGOS_SELF_TYPE_NORMAL com_ds_ads_AdManager* _LOGOS_SELF_CONST, SEL); static int (*_logos_orig$_ungrouped$com_ds_metadata_AdBreak$getStartTime)(_LOGOS_SELF_TYPE_NORMAL com_ds_metadata_AdBreak* _LOGOS_SELF_CONST, SEL); static int _logos_method$_ungrouped$com_ds_metadata_AdBreak$getStartTime(_LOGOS_SELF_TYPE_NORMAL com_ds_metadata_AdBreak* _LOGOS_SELF_CONST, SEL); 

#line 3 "Tweak.xm"

static CWSplashScreenStaticImage* _logos_method$_ungrouped$CWSplashScreenStaticImage$initRemoteImageWithDuration$(_LOGOS_SELF_TYPE_INIT CWSplashScreenStaticImage* __unused self, SEL __unused _cmd, unsigned int arg1) _LOGOS_RETURN_RETAINED {
    arg1 = 0;
    return _logos_orig$_ungrouped$CWSplashScreenStaticImage$initRemoteImageWithDuration$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$GADBannerView$setAdSize$andReload$(_LOGOS_SELF_TYPE_NORMAL GADBannerView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, GADAdSize arg1, BOOL arg2) {
    arg2 = 0;
    _logos_orig$_ungrouped$GADBannerView$setAdSize$andReload$(self, _cmd, arg1, arg2);
}



static unsigned char _logos_method$_ungrouped$com_ds_ads_AdManager$getCanPlayPreroll(_LOGOS_SELF_TYPE_NORMAL com_ds_ads_AdManager* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 0;
}



static int _logos_method$_ungrouped$com_ds_metadata_AdBreak$getStartTime(_LOGOS_SELF_TYPE_NORMAL com_ds_metadata_AdBreak* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 999999;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$CWSplashScreenStaticImage = objc_getClass("CWSplashScreenStaticImage"); { MSHookMessageEx(_logos_class$_ungrouped$CWSplashScreenStaticImage, @selector(initRemoteImageWithDuration:), (IMP)&_logos_method$_ungrouped$CWSplashScreenStaticImage$initRemoteImageWithDuration$, (IMP*)&_logos_orig$_ungrouped$CWSplashScreenStaticImage$initRemoteImageWithDuration$);}Class _logos_class$_ungrouped$GADBannerView = objc_getClass("GADBannerView"); { MSHookMessageEx(_logos_class$_ungrouped$GADBannerView, @selector(setAdSize:andReload:), (IMP)&_logos_method$_ungrouped$GADBannerView$setAdSize$andReload$, (IMP*)&_logos_orig$_ungrouped$GADBannerView$setAdSize$andReload$);}Class _logos_class$_ungrouped$com_ds_ads_AdManager = objc_getClass("com_ds_ads_AdManager"); { MSHookMessageEx(_logos_class$_ungrouped$com_ds_ads_AdManager, @selector(getCanPlayPreroll), (IMP)&_logos_method$_ungrouped$com_ds_ads_AdManager$getCanPlayPreroll, (IMP*)&_logos_orig$_ungrouped$com_ds_ads_AdManager$getCanPlayPreroll);}Class _logos_class$_ungrouped$com_ds_metadata_AdBreak = objc_getClass("com_ds_metadata_AdBreak"); { MSHookMessageEx(_logos_class$_ungrouped$com_ds_metadata_AdBreak, @selector(getStartTime), (IMP)&_logos_method$_ungrouped$com_ds_metadata_AdBreak$getStartTime, (IMP*)&_logos_orig$_ungrouped$com_ds_metadata_AdBreak$getStartTime);}} }
#line 29 "Tweak.xm"
