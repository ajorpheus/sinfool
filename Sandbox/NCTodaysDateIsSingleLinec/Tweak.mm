#import <UIKit/UIKit.h>

#include <substrate.h>

static id (*_orig_ftt_meth_$SBTodayTableDateHeaderFactory$dateHeaderWithDate$locale$singleLine$)(id, SEL, id, id, BOOL);
static id _patched_ftt_meth_$SBTodayTableDateHeaderFactory$dateHeaderWithDate$locale$singleLine$(id self, SEL _cmd, id arg1, id arg2, BOOL arg3) {
    arg3 = 1;
    return _orig_ftt_meth_$SBTodayTableDateHeaderFactory$dateHeaderWithDate$locale$singleLine$(self, _cmd, arg1, arg2, arg3);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBTodayTableDateHeaderFactory = objc_getClass("SBTodayTableDateHeaderFactory");
    MSHookMessageEx(_ftt_class_SBTodayTableDateHeaderFactory, @selector(dateHeaderWithDate:locale:singleLine:), (IMP)_patched_ftt_meth_$SBTodayTableDateHeaderFactory$dateHeaderWithDate$locale$singleLine$, (IMP *)_orig_ftt_meth_$SBTodayTableDateHeaderFactory$dateHeaderWithDate$locale$singleLine$);
}
