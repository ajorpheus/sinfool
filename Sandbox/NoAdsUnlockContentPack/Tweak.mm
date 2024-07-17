#import <UIKit/UIKit.h>

#include <substrate.h>

static id _patched_ftt_meth_$GADAdFetcher$init(id self, SEL _cmd) {
    return NULL;
}

static BOOL _patched_ftt_meth_$AFContentPack$unlocked(id self, SEL _cmd) {
    return 1;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_GADAdFetcher = objc_getClass("GADAdFetcher");
    MSHookMessageEx(_ftt_class_GADAdFetcher, @selector(init), (IMP)_patched_ftt_meth_$GADAdFetcher$init, NULL);
    Class _ftt_class_AFContentPack = objc_getClass("AFContentPack");
    MSHookMessageEx(_ftt_class_AFContentPack, @selector(unlocked), (IMP)_patched_ftt_meth_$AFContentPack$unlocked, NULL);
}
