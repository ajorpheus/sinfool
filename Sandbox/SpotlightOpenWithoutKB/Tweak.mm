#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$SPUISearchViewController$_showKeyboardOnPresentation(id self, SEL _cmd) {
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SPUISearchViewController = objc_getClass("SPUISearchViewController");
    MSHookMessageEx(_ftt_class_SPUISearchViewController, @selector(_showKeyboardOnPresentation), (IMP)_patched_ftt_meth_$SPUISearchViewController$_showKeyboardOnPresentation, NULL);
}
