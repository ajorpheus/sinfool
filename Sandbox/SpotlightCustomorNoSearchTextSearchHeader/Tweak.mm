#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$SPUITextField$setPlaceholder$)(id, SEL, id);
static void _patched_ftt_meth_$SPUITextField$setPlaceholder$(id self, SEL _cmd, id arg1) {
    // Set Custom Text...
    arg1 = @" ";
    _orig_ftt_meth_$SPUITextField$setPlaceholder$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SPUITextField = objc_getClass("SPUITextField");
    MSHookMessageEx(_ftt_class_SPUITextField, @selector(setPlaceholder:), (IMP)_patched_ftt_meth_$SPUITextField$setPlaceholder$, (IMP *)_orig_ftt_meth_$SPUITextField$setPlaceholder$);
}
