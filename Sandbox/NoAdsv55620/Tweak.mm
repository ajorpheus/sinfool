#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$TMOAccountInfo$mustShowAds(id self, SEL _cmd) {
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_TMOAccountInfo = objc_getClass("TMOAccountInfo");
    MSHookMessageEx(_ftt_class_TMOAccountInfo, @selector(mustShowAds), (IMP)_patched_ftt_meth_$TMOAccountInfo$mustShowAds, NULL);
}
