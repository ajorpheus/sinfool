#import <UIKit/UIKit.h>

#include <substrate.h>

static id (*_orig_ftt_meth_$PSUIDateTimePickerCell$initWithStyle$reuseIdentifier$specifier$)(id, SEL, long long, id, id);
static id _patched_ftt_meth_$PSUIDateTimePickerCell$initWithStyle$reuseIdentifier$specifier$(id self, SEL _cmd, long long arg1, id arg2, id arg3) {
    arg1 = -1;
    return _orig_ftt_meth_$PSUIDateTimePickerCell$initWithStyle$reuseIdentifier$specifier$(self, _cmd, arg1, arg2, arg3);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_PSUIDateTimePickerCell = objc_getClass("PSUIDateTimePickerCell");
    MSHookMessageEx(_ftt_class_PSUIDateTimePickerCell, @selector(initWithStyle:reuseIdentifier:specifier:), (IMP)_patched_ftt_meth_$PSUIDateTimePickerCell$initWithStyle$reuseIdentifier$specifier$, (IMP *)_orig_ftt_meth_$PSUIDateTimePickerCell$initWithStyle$reuseIdentifier$specifier$);
}
