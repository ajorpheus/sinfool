#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$SBSearchEtceteraDateViewController$setUseMultiLineDate$)(id, SEL, bool);
static void _patched_ftt_meth_$SBSearchEtceteraDateViewController$setUseMultiLineDate$(id self, SEL _cmd, bool arg1) {
    arg1 = 0;
    _orig_ftt_meth_$SBSearchEtceteraDateViewController$setUseMultiLineDate$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBSearchEtceteraDateViewController = objc_getClass("SBSearchEtceteraDateViewController");
    MSHookMessageEx(_ftt_class_SBSearchEtceteraDateViewController, @selector(setUseMultiLineDate:), (IMP)_patched_ftt_meth_$SBSearchEtceteraDateViewController$setUseMultiLineDate$, (IMP *)_orig_ftt_meth_$SBSearchEtceteraDateViewController$setUseMultiLineDate$);
}
