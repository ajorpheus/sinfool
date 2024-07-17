#import <UIKit/UIKit.h>

#include <substrate.h>

static BOOL _patched_ftt_meth_$GADAdFetcher$didAdLoadComplete(id self, SEL _cmd) {
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_GADAdFetcher = objc_getClass("GADAdFetcher");
    MSHookMessageEx(_ftt_class_GADAdFetcher, @selector(didAdLoadComplete), (IMP)_patched_ftt_meth_$GADAdFetcher$didAdLoadComplete, NULL);
}
