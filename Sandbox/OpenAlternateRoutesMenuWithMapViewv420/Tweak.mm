#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$AlternativeRoutesVC$setCurrentViewType$)(id, SEL, unsigned long long);
static void _patched_ftt_meth_$AlternativeRoutesVC$setCurrentViewType$(id self, SEL _cmd, unsigned long long arg1) {
    arg1 = 1;
    _orig_ftt_meth_$AlternativeRoutesVC$setCurrentViewType$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_AlternativeRoutesVC = objc_getClass("AlternativeRoutesVC");
    MSHookMessageEx(_ftt_class_AlternativeRoutesVC, @selector(setCurrentViewType:), (IMP)_patched_ftt_meth_$AlternativeRoutesVC$setCurrentViewType$, (IMP *)_orig_ftt_meth_$AlternativeRoutesVC$setCurrentViewType$);
}
