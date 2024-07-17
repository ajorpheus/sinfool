#import <UIKit/UIKit.h>

#include <substrate.h>

static id _patched_ftt_meth_$GADViewController$init(id self, SEL _cmd) {
    return NULL;
}

static void (*_orig_ftt_meth_$GADBannerView$setAdSize$andReload$)(id, SEL, GADAdSize, BOOL);
static void _patched_ftt_meth_$GADBannerView$setAdSize$andReload$(id self, SEL _cmd, GADAdSize arg1, BOOL arg2) {
    arg2 = 0;
    _orig_ftt_meth_$GADBannerView$setAdSize$andReload$(self, _cmd, arg1, arg2);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_GADViewController = objc_getClass("GADViewController");
    MSHookMessageEx(_ftt_class_GADViewController, @selector(init), (IMP)_patched_ftt_meth_$GADViewController$init, NULL);
    Class _ftt_class_GADBannerView = objc_getClass("GADBannerView");
    MSHookMessageEx(_ftt_class_GADBannerView, @selector(setAdSize:andReload:), (IMP)_patched_ftt_meth_$GADBannerView$setAdSize$andReload$, (IMP *)_orig_ftt_meth_$GADBannerView$setAdSize$andReload$);
}
