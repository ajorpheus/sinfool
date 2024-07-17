#import <UIKit/UIKit.h>

#include <substrate.h>

static bool (*_orig_ftt_meth_$SBIconScrollView$_getPagingDecelerationOffset$forTimeInterval$)(id, SEL, CGPoint*, double);
static bool _patched_ftt_meth_$SBIconScrollView$_getPagingDecelerationOffset$forTimeInterval$(id self, SEL _cmd, CGPoint* arg1, double arg2) {
    arg2 = 400;
    return _orig_ftt_meth_$SBIconScrollView$_getPagingDecelerationOffset$forTimeInterval$(self, _cmd, arg1, arg2);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBIconScrollView = objc_getClass("SBIconScrollView");
    MSHookMessageEx(_ftt_class_SBIconScrollView, @selector(_getPagingDecelerationOffset:forTimeInterval:), (IMP)_patched_ftt_meth_$SBIconScrollView$_getPagingDecelerationOffset$forTimeInterval$, (IMP *)_orig_ftt_meth_$SBIconScrollView$_getPagingDecelerationOffset$forTimeInterval$);
}
