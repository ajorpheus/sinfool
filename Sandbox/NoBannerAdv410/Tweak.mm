#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$GADBannerView$setAdSize$andReload$)(id, SEL, GADAdSize, bool);
static void _patched_ftt_meth_$GADBannerView$setAdSize$andReload$(id self, SEL _cmd, GADAdSize arg1, bool arg2) {
    arg2 = 0;
    _orig_ftt_meth_$GADBannerView$setAdSize$andReload$(self, _cmd, arg1, arg2);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_GADBannerView = objc_getClass("GADBannerView");
    MSHookMessageEx(_ftt_class_GADBannerView, @selector(setAdSize:andReload:), (IMP)_patched_ftt_meth_$GADBannerView$setAdSize$andReload$, (IMP *)_orig_ftt_meth_$GADBannerView$setAdSize$andReload$);
}
