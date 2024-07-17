#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$FWAd$setAdId$)(id, SEL, unsigned long long);
static void _patched_ftt_meth_$FWAd$setAdId$(id self, SEL _cmd, unsigned long long arg1) {
    arg1 = 0;
    _orig_ftt_meth_$FWAd$setAdId$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_FWAd = objc_getClass("FWAd");
    MSHookMessageEx(_ftt_class_FWAd, @selector(setAdId:), (IMP)_patched_ftt_meth_$FWAd$setAdId$, (IMP *)_orig_ftt_meth_$FWAd$setAdId$);
}
