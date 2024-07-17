#import <UIKit/UIKit.h>

#include <substrate.h>

static id (*_orig_ftt_meth_$SBBannerGestureHandler$initWithBannerController$bannerViewController$)(id, SEL, id, id);
static id _patched_ftt_meth_$SBBannerGestureHandler$initWithBannerController$bannerViewController$(id self, SEL _cmd, id arg1, id arg2) {
    // (Return Value): Disable all up + down swipe gestures=NULL, Stock=pass-through  (Arg#2): Disable swipe up gesture in quick reply etc.=NULL, Stock=pass-through
    arg2 = NULL;
    return _orig_ftt_meth_$SBBannerGestureHandler$initWithBannerController$bannerViewController$(self, _cmd, arg1, arg2);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBBannerGestureHandler = objc_getClass("SBBannerGestureHandler");
    MSHookMessageEx(_ftt_class_SBBannerGestureHandler, @selector(initWithBannerController:bannerViewController:), (IMP)_patched_ftt_meth_$SBBannerGestureHandler$initWithBannerController$bannerViewController$, (IMP *)_orig_ftt_meth_$SBBannerGestureHandler$initWithBannerController$bannerViewController$);
}
