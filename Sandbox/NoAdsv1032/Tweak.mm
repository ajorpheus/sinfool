#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$GADAdFetcher$fetchRequestURL$delegate$responseHeaders$responseAd$error$(id self, SEL _cmd, id arg1, id arg2, id arg3, id arg4, id* arg5) {
    return 0;
}

static bool _patched_ftt_meth_$ABVideoControlCenter$prerollEnabled(id self, SEL _cmd) {
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_GADAdFetcher = objc_getClass("GADAdFetcher");
    MSHookMessageEx(_ftt_class_GADAdFetcher, @selector(fetchRequestURL:delegate:responseHeaders:responseAd:error:), (IMP)_patched_ftt_meth_$GADAdFetcher$fetchRequestURL$delegate$responseHeaders$responseAd$error$, NULL);
    Class _ftt_class_ABVideoControlCenter = objc_getClass("ABVideoControlCenter");
    MSHookMessageEx(_ftt_class_ABVideoControlCenter, @selector(prerollEnabled), (IMP)_patched_ftt_meth_$ABVideoControlCenter$prerollEnabled, NULL);
}
