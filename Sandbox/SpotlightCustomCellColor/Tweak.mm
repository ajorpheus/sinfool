#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$SearchUIRoundedView$setColor$)(id, SEL, id);
static void _patched_ftt_meth_$SearchUIRoundedView$setColor$(id self, SEL _cmd, id arg1) {
    // Set Color...
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:28/255.0];
    _orig_ftt_meth_$SearchUIRoundedView$setColor$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SearchUIRoundedView = objc_getClass("SearchUIRoundedView");
    MSHookMessageEx(_ftt_class_SearchUIRoundedView, @selector(setColor:), (IMP)_patched_ftt_meth_$SearchUIRoundedView$setColor$, (IMP *)_orig_ftt_meth_$SearchUIRoundedView$setColor$);
}
