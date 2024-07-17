#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$ADCZone$hasAdsOfType$(id self, SEL _cmd, long long arg1) {
    // •
    return 0;
}

static id _patched_ftt_meth_$GADAdFetcher$init(id self, SEL _cmd) {
    // •
    return NULL;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_ADCZone = objc_getClass("ADCZone");
    MSHookMessageEx(_ftt_class_ADCZone, @selector(hasAdsOfType:), (IMP)_patched_ftt_meth_$ADCZone$hasAdsOfType$, NULL);
    Class _ftt_class_GADAdFetcher = objc_getClass("GADAdFetcher");
    MSHookMessageEx(_ftt_class_GADAdFetcher, @selector(init), (IMP)_patched_ftt_meth_$GADAdFetcher$init, NULL);
}
