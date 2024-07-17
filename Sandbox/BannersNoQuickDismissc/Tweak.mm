#import <UIKit/UIKit.h>

#include <substrate.h>

static id (*_orig_ftt_meth_$SBBannerGestureHandler$initWithBannerController$bannerViewController$)(id, SEL, id, id);
static id _patched_ftt_meth_$SBBannerGestureHandler$initWithBannerController$bannerViewController$(id self, SEL _cmd, id arg1, id arg2) {
    // •
    arg2 = NULL;
    return _orig_ftt_meth_$SBBannerGestureHandler$initWithBannerController$bannerViewController$(self, _cmd, arg1, arg2);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBBannerGestureHandler = objc_getClass("SBBannerGestureHandler");
    MSHookMessageEx(_ftt_class_SBBannerGestureHandler, @selector(initWithBannerController:bannerViewController:), (IMP)_patched_ftt_meth_$SBBannerGestureHandler$initWithBannerController$bannerViewController$, (IMP *)_orig_ftt_meth_$SBBannerGestureHandler$initWithBannerController$bannerViewController$);
}
