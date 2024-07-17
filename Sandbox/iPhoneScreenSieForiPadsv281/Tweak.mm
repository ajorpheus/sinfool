#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$UIApplication$_setClassicMode$)(id, SEL, long long);
static void _patched_ftt_meth_$UIApplication$_setClassicMode$(id self, SEL _cmd, long long arg1) {
    arg1 = 1;
    _orig_ftt_meth_$UIApplication$_setClassicMode$(self, _cmd, arg1);
}

static bool _patched_ftt_meth_$UIApplication$_shouldZoom(id self, SEL _cmd) {
    return 1;
}

static bool _patched_ftt_meth_$UIApplication$_shouldUseHiResForClassic(id self, SEL _cmd) {
    return 1;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_UIApplication = objc_getClass("UIApplication");
    MSHookMessageEx(_ftt_class_UIApplication, @selector(_setClassicMode:), (IMP)_patched_ftt_meth_$UIApplication$_setClassicMode$, (IMP *)_orig_ftt_meth_$UIApplication$_setClassicMode$);
    MSHookMessageEx(_ftt_class_UIApplication, @selector(_shouldZoom), (IMP)_patched_ftt_meth_$UIApplication$_shouldZoom, NULL);
    MSHookMessageEx(_ftt_class_UIApplication, @selector(_shouldUseHiResForClassic), (IMP)_patched_ftt_meth_$UIApplication$_shouldUseHiResForClassic, NULL);
}
