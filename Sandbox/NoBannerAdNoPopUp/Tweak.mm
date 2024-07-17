#import <UIKit/UIKit.h>

#include <substrate.h>

static id _patched_ftt_meth_$TiUIiOSAdView$adview(id self, SEL _cmd) {
    return NULL;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_TiUIiOSAdView = objc_getClass("TiUIiOSAdView");
    MSHookMessageEx(_ftt_class_TiUIiOSAdView, @selector(adview), (IMP)_patched_ftt_meth_$TiUIiOSAdView$adview, NULL);
}
