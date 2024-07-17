#import <UIKit/UIKit.h>

#include <substrate.h>

static id _patched_ftt_meth_$GADAdFetcher$init(id self, SEL _cmd) {
    return NULL;
}

static id _patched_ftt_meth_$STAAd$init(id self, SEL _cmd) {
    return NULL;
}

static id _patched_ftt_meth_$_LBLeadboltMng$init(id self, SEL _cmd) {
    return NULL;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_GADAdFetcher = objc_getClass("GADAdFetcher");
    MSHookMessageEx(_ftt_class_GADAdFetcher, @selector(init), (IMP)_patched_ftt_meth_$GADAdFetcher$init, NULL);
    Class _ftt_class_STAAd = objc_getClass("STAAd");
    MSHookMessageEx(_ftt_class_STAAd, @selector(init), (IMP)_patched_ftt_meth_$STAAd$init, NULL);
    Class _ftt_class__LBLeadboltMng = objc_getClass("_LBLeadboltMng");
    MSHookMessageEx(_ftt_class__LBLeadboltMng, @selector(init), (IMP)_patched_ftt_meth_$_LBLeadboltMng$init, NULL);
}
