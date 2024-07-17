#import <UIKit/UIKit.h>

#include <substrate.h>

static BOOL _patched_ftt_meth_$NBCSEventItem$free(id self, SEL _cmd) {
    return 1;
}

static id (*_orig_ftt_meth_$GADAdFetcher$initWithDelegate$)(id, SEL, id);
static id _patched_ftt_meth_$GADAdFetcher$initWithDelegate$(id self, SEL _cmd, id arg1) {
    arg1 = NULL;
    return _orig_ftt_meth_$GADAdFetcher$initWithDelegate$(self, _cmd, arg1);
}

static BOOL _patched_ftt_meth_$PTMediaPlayerItem$skipLivePreroll(id self, SEL _cmd) {
    return 1;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_NBCSEventItem = objc_getClass("NBCSEventItem");
    MSHookMessageEx(_ftt_class_NBCSEventItem, @selector(free), (IMP)_patched_ftt_meth_$NBCSEventItem$free, NULL);
    Class _ftt_class_GADAdFetcher = objc_getClass("GADAdFetcher");
    MSHookMessageEx(_ftt_class_GADAdFetcher, @selector(initWithDelegate:), (IMP)_patched_ftt_meth_$GADAdFetcher$initWithDelegate$, (IMP *)_orig_ftt_meth_$GADAdFetcher$initWithDelegate$);
    Class _ftt_class_PTMediaPlayerItem = objc_getClass("PTMediaPlayerItem");
    MSHookMessageEx(_ftt_class_PTMediaPlayerItem, @selector(skipLivePreroll), (IMP)_patched_ftt_meth_$PTMediaPlayerItem$skipLivePreroll, NULL);
}
