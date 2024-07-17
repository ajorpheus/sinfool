#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$TPPathView$setFillColor$)(id, SEL, id);
static void _patched_ftt_meth_$TPPathView$setFillColor$(id self, SEL _cmd, id arg1) {
    // Passcode Button Color
    arg1 = [UIColor colorWithRed:255/255.0 green:127/255.0 blue:0/255.0 alpha:255/255.0];
    _orig_ftt_meth_$TPPathView$setFillColor$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_TPPathView = objc_getClass("TPPathView");
    MSHookMessageEx(_ftt_class_TPPathView, @selector(setFillColor:), (IMP)_patched_ftt_meth_$TPPathView$setFillColor$, (IMP *)_orig_ftt_meth_$TPPathView$setFillColor$);
}
