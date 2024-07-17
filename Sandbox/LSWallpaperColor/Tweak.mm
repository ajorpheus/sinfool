#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$SBDashBoardAppearance$setBackgroundColor$)(id, SEL, id);
static void _patched_ftt_meth_$SBDashBoardAppearance$setBackgroundColor$(id self, SEL _cmd, id arg1) {
    // Set Color...
    arg1 = [UIColor colorWithRed:17/255.0 green:104/255.0 blue:104/255.0 alpha:255/255.0];
    _orig_ftt_meth_$SBDashBoardAppearance$setBackgroundColor$(self, _cmd, arg1);
}

static bool _patched_ftt_meth_$SBDashBoardViewController$isTransitioning(id self, SEL _cmd) {
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBDashBoardAppearance = objc_getClass("SBDashBoardAppearance");
    MSHookMessageEx(_ftt_class_SBDashBoardAppearance, @selector(setBackgroundColor:), (IMP)_patched_ftt_meth_$SBDashBoardAppearance$setBackgroundColor$, (IMP *)_orig_ftt_meth_$SBDashBoardAppearance$setBackgroundColor$);
    Class _ftt_class_SBDashBoardViewController = objc_getClass("SBDashBoardViewController");
    MSHookMessageEx(_ftt_class_SBDashBoardViewController, @selector(isTransitioning), (IMP)_patched_ftt_meth_$SBDashBoardViewController$isTransitioning, NULL);
}
