#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$SPUINavigationBar$showSeparator$animated$)(id, SEL, bool, bool);
static void _patched_ftt_meth_$SPUINavigationBar$showSeparator$animated$(id self, SEL _cmd, bool arg1, bool arg2) {
    // Top Separator
    arg1 = 0;
    _orig_ftt_meth_$SPUINavigationBar$showSeparator$animated$(self, _cmd, arg1, arg2);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SPUINavigationBar = objc_getClass("SPUINavigationBar");
    MSHookMessageEx(_ftt_class_SPUINavigationBar, @selector(showSeparator:animated:), (IMP)_patched_ftt_meth_$SPUINavigationBar$showSeparator$animated$, (IMP *)_orig_ftt_meth_$SPUINavigationBar$showSeparator$animated$);
}
