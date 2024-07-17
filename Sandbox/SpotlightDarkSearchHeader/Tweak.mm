#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$SPUISearchHeader$updateBlurProgress$)(id, SEL, double);
static void _patched_ftt_meth_$SPUISearchHeader$updateBlurProgress$(id self, SEL _cmd, double arg1) {
    // 1=Dark (Semi-Transparent), 2=Dark (Opaque) etc.
    arg1 = 1;
    _orig_ftt_meth_$SPUISearchHeader$updateBlurProgress$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$SPUINavigationBar$updateBlurProgress$animated$)(id, SEL, double, bool);
static void _patched_ftt_meth_$SPUINavigationBar$updateBlurProgress$animated$(id self, SEL _cmd, double arg1, bool arg2) {
    arg1 = 0;
    _orig_ftt_meth_$SPUINavigationBar$updateBlurProgress$animated$(self, _cmd, arg1, arg2);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SPUISearchHeader = objc_getClass("SPUISearchHeader");
    MSHookMessageEx(_ftt_class_SPUISearchHeader, @selector(updateBlurProgress:), (IMP)_patched_ftt_meth_$SPUISearchHeader$updateBlurProgress$, (IMP *)_orig_ftt_meth_$SPUISearchHeader$updateBlurProgress$);
    Class _ftt_class_SPUINavigationBar = objc_getClass("SPUINavigationBar");
    MSHookMessageEx(_ftt_class_SPUINavigationBar, @selector(updateBlurProgress:animated:), (IMP)_patched_ftt_meth_$SPUINavigationBar$updateBlurProgress$animated$, (IMP *)_orig_ftt_meth_$SPUINavigationBar$updateBlurProgress$animated$);
}
