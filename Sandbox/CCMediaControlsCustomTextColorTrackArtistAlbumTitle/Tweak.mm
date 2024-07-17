#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$CCUIControlCenterLabel$setTextColor$)(id, SEL, id);
static void _patched_ftt_meth_$CCUIControlCenterLabel$setTextColor$(id self, SEL _cmd, id arg1) {
    // Set Text Color...
    arg1 = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:255/255.0];
    _orig_ftt_meth_$CCUIControlCenterLabel$setTextColor$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$CCUIControlCenterLabel$setStyle$)(id, SEL, unsigned long long);
static void _patched_ftt_meth_$CCUIControlCenterLabel$setStyle$(id self, SEL _cmd, unsigned long long arg1) {
    arg1 = 2;
    _orig_ftt_meth_$CCUIControlCenterLabel$setStyle$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_CCUIControlCenterLabel = objc_getClass("CCUIControlCenterLabel");
    MSHookMessageEx(_ftt_class_CCUIControlCenterLabel, @selector(setTextColor:), (IMP)_patched_ftt_meth_$CCUIControlCenterLabel$setTextColor$, (IMP *)_orig_ftt_meth_$CCUIControlCenterLabel$setTextColor$);
    MSHookMessageEx(_ftt_class_CCUIControlCenterLabel, @selector(setStyle:), (IMP)_patched_ftt_meth_$CCUIControlCenterLabel$setStyle$, (IMP *)_orig_ftt_meth_$CCUIControlCenterLabel$setStyle$);
}
