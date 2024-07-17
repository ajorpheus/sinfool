#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$SBSearchViewController$_setShowingKeyboard$)(id, SEL, bool);
static void _patched_ftt_meth_$SBSearchViewController$_setShowingKeyboard$(id self, SEL _cmd, bool arg1) {
    // •
    arg1 = 0;
    _orig_ftt_meth_$SBSearchViewController$_setShowingKeyboard$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBSearchViewController = objc_getClass("SBSearchViewController");
    MSHookMessageEx(_ftt_class_SBSearchViewController, @selector(_setShowingKeyboard:), (IMP)_patched_ftt_meth_$SBSearchViewController$_setShowingKeyboard$, (IMP *)_orig_ftt_meth_$SBSearchViewController$_setShowingKeyboard$);
}
