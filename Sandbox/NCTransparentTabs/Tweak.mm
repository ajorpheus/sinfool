#import <UIKit/UIKit.h>

#include <substrate.h>

static id (*_orig_ftt_meth_$SBControlColorSettings$initWithTintColor$selectedTintColor$textColor$selectedTextColor$)(id, SEL, id, id, id, id);
static id _patched_ftt_meth_$SBControlColorSettings$initWithTintColor$selectedTintColor$textColor$selectedTextColor$(id self, SEL _cmd, id arg1, id arg2, id arg3, id arg4) {
    // (Argument#3): Unselected Text Color (Argument#4): Selected Text Color
    arg3 = [UIColor colorWithRed:146/255.0 green:146/255.0 blue:146/255.0 alpha:255/255.0];
    arg4 = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:255/255.0];
    return _orig_ftt_meth_$SBControlColorSettings$initWithTintColor$selectedTintColor$textColor$selectedTextColor$(self, _cmd, arg1, arg2, arg3, arg4);
}

static id _patched_ftt_meth_$SBRootSettings$notificationCenterSettings(id self, SEL _cmd) {
    return NULL;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBControlColorSettings = objc_getClass("SBControlColorSettings");
    MSHookMessageEx(_ftt_class_SBControlColorSettings, @selector(initWithTintColor:selectedTintColor:textColor:selectedTextColor:), (IMP)_patched_ftt_meth_$SBControlColorSettings$initWithTintColor$selectedTintColor$textColor$selectedTextColor$, (IMP *)_orig_ftt_meth_$SBControlColorSettings$initWithTintColor$selectedTintColor$textColor$selectedTextColor$);
    Class _ftt_class_SBRootSettings = objc_getClass("SBRootSettings");
    MSHookMessageEx(_ftt_class_SBRootSettings, @selector(notificationCenterSettings), (IMP)_patched_ftt_meth_$SBRootSettings$notificationCenterSettings, NULL);
}
