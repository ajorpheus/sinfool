#import <UIKit/UIKit.h>

#include <substrate.h>

static id _patched_ftt_meth_$ChartBoostManager$init(id self, SEL _cmd) {
    return NULL;
}

static id _patched_ftt_meth_$GADAdFetcher$init(id self, SEL _cmd) {
    return NULL;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_ChartBoostManager = objc_getClass("ChartBoostManager");
    MSHookMessageEx(_ftt_class_ChartBoostManager, @selector(init), (IMP)_patched_ftt_meth_$ChartBoostManager$init, NULL);
    Class _ftt_class_GADAdFetcher = objc_getClass("GADAdFetcher");
    MSHookMessageEx(_ftt_class_GADAdFetcher, @selector(init), (IMP)_patched_ftt_meth_$GADAdFetcher$init, NULL);
}