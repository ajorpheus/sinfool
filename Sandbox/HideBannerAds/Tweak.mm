#import <UIKit/UIKit.h>

#include <substrate.h>

static id _patched_ftt_meth_$GADBannerView$initWithFrame$(id self, SEL _cmd, CGRect arg1) {
    // Delete **THIS** for a BLACK Banner 
    return NULL;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_GADBannerView = objc_getClass("GADBannerView");
    MSHookMessageEx(_ftt_class_GADBannerView, @selector(initWithFrame:), (IMP)_patched_ftt_meth_$GADBannerView$initWithFrame$, NULL);
}
