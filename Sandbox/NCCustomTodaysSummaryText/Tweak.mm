#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$SBTodayTableViewCell$setLabelText$)(id, SEL, id);
static void _patched_ftt_meth_$SBTodayTableViewCell$setLabelText$(id self, SEL _cmd, id arg1) {
    // Set Custom Text...
    arg1 = @"Very cloudy today.  It's currently 98.6°; the high will be 420°.";
    _orig_ftt_meth_$SBTodayTableViewCell$setLabelText$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBTodayTableViewCell = objc_getClass("SBTodayTableViewCell");
    MSHookMessageEx(_ftt_class_SBTodayTableViewCell, @selector(setLabelText:), (IMP)_patched_ftt_meth_$SBTodayTableViewCell$setLabelText$, (IMP *)_orig_ftt_meth_$SBTodayTableViewCell$setLabelText$);
}
