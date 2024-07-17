#import <UIKit/UIKit.h>

#include <substrate.h>

static id (*_orig_ftt_meth_$SBNotificationsClearButton$initWithTitle$graphicsQuality$)(id, SEL, id, long long);
static id _patched_ftt_meth_$SBNotificationsClearButton$initWithTitle$graphicsQuality$(id self, SEL _cmd, id arg1, long long arg2) {
    // (Arg#1): Custom "Clear" Text,  (Arg#2): "X" Button Style - 0=White
    arg1 = @"Delete All";
    arg2 = 0;
    return _orig_ftt_meth_$SBNotificationsClearButton$initWithTitle$graphicsQuality$(self, _cmd, arg1, arg2);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBNotificationsClearButton = objc_getClass("SBNotificationsClearButton");
    MSHookMessageEx(_ftt_class_SBNotificationsClearButton, @selector(initWithTitle:graphicsQuality:), (IMP)_patched_ftt_meth_$SBNotificationsClearButton$initWithTitle$graphicsQuality$, (IMP *)_orig_ftt_meth_$SBNotificationsClearButton$initWithTitle$graphicsQuality$);
}
