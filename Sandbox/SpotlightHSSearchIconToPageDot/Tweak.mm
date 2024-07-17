#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$SBIconListPageControl$setShouldShowSearchIndicator$)(id, SEL, bool);
static void _patched_ftt_meth_$SBIconListPageControl$setShouldShowSearchIndicator$(id self, SEL _cmd, bool arg1) {
    arg1 = 0;
    _orig_ftt_meth_$SBIconListPageControl$setShouldShowSearchIndicator$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBIconListPageControl = objc_getClass("SBIconListPageControl");
    MSHookMessageEx(_ftt_class_SBIconListPageControl, @selector(setShouldShowSearchIndicator:), (IMP)_patched_ftt_meth_$SBIconListPageControl$setShouldShowSearchIndicator$, (IMP *)_orig_ftt_meth_$SBIconListPageControl$setShouldShowSearchIndicator$);
}
