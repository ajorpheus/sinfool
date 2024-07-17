#import <UIKit/UIKit.h>

#include <substrate.h>

static id _patched_ftt_meth_$GADAdFetcher$init(id self, SEL _cmd) {
    return NULL;
}

static void (*_orig_ftt_meth_$CBSiSkinSlider$setAdMarkersAreHidden$)(id, SEL, BOOL);
static void _patched_ftt_meth_$CBSiSkinSlider$setAdMarkersAreHidden$(id self, SEL _cmd, BOOL arg1) {
    arg1 = 1;
    _orig_ftt_meth_$CBSiSkinSlider$setAdMarkersAreHidden$(self, _cmd, arg1);
}

static id _patched_ftt_meth_$UIAlertView$initWithFrame$(id self, SEL _cmd, CGRect arg1) {
    return NULL;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_GADAdFetcher = objc_getClass("GADAdFetcher");
    MSHookMessageEx(_ftt_class_GADAdFetcher, @selector(init), (IMP)_patched_ftt_meth_$GADAdFetcher$init, NULL);
    Class _ftt_class_CBSiSkinSlider = objc_getClass("CBSiSkinSlider");
    MSHookMessageEx(_ftt_class_CBSiSkinSlider, @selector(setAdMarkersAreHidden:), (IMP)_patched_ftt_meth_$CBSiSkinSlider$setAdMarkersAreHidden$, (IMP *)_orig_ftt_meth_$CBSiSkinSlider$setAdMarkersAreHidden$);
    Class _ftt_class_UIAlertView = objc_getClass("UIAlertView");
    MSHookMessageEx(_ftt_class_UIAlertView, @selector(initWithFrame:), (IMP)_patched_ftt_meth_$UIAlertView$initWithFrame$, NULL);
}
