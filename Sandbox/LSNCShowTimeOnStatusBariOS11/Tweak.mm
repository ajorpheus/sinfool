#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$SBMainStatusBarStateProvider$enableTime$crossfade$crossfadeDuration$)(id, SEL, bool, bool, double);
static void _patched_ftt_meth_$SBMainStatusBarStateProvider$enableTime$crossfade$crossfadeDuration$(id self, SEL _cmd, bool arg1, bool arg2, double arg3) {
    arg1 = 1;
    _orig_ftt_meth_$SBMainStatusBarStateProvider$enableTime$crossfade$crossfadeDuration$(self, _cmd, arg1, arg2, arg3);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBMainStatusBarStateProvider = objc_getClass("SBMainStatusBarStateProvider");
    MSHookMessageEx(_ftt_class_SBMainStatusBarStateProvider, @selector(enableTime:crossfade:crossfadeDuration:), (IMP)_patched_ftt_meth_$SBMainStatusBarStateProvider$enableTime$crossfade$crossfadeDuration$, (IMP *)_orig_ftt_meth_$SBMainStatusBarStateProvider$enableTime$crossfade$crossfadeDuration$);
}
