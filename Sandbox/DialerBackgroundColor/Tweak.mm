#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$PhoneRootView$setBackgroundColor$)(id, SEL, id);
static void _patched_ftt_meth_$PhoneRootView$setBackgroundColor$(id self, SEL _cmd, id arg1) {
    // Set Color...
    arg1 = [UIColor colorWithRed:241/255.0 green:11/255.0 blue:145/255.0 alpha:255/255.0];
    _orig_ftt_meth_$PhoneRootView$setBackgroundColor$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_PhoneRootView = objc_getClass("PhoneRootView");
    MSHookMessageEx(_ftt_class_PhoneRootView, @selector(setBackgroundColor:), (IMP)_patched_ftt_meth_$PhoneRootView$setBackgroundColor$, (IMP *)_orig_ftt_meth_$PhoneRootView$setBackgroundColor$);
}
