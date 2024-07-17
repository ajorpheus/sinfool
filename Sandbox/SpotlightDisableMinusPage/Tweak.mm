#import <UIKit/UIKit.h>

#include <substrate.h>

static BOOL _patched_ftt_meth_$SBSpotlightSettings$enableSpotlightOnMinusPage(id self, SEL _cmd) {
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBSpotlightSettings = objc_getClass("SBSpotlightSettings");
    MSHookMessageEx(_ftt_class_SBSpotlightSettings, @selector(enableSpotlightOnMinusPage), (IMP)_patched_ftt_meth_$SBSpotlightSettings$enableSpotlightOnMinusPage, NULL);
}
