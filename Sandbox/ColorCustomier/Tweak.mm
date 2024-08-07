#import <UIKit/UIKit.h>

#include <substrate.h>

static BOOL _patched_ftt_meth_$SBLockScreenView$legibilitySettingsOverrideVibrancy(id self, SEL _cmd) {
    return 1;
}

static void (*_orig_ftt_meth_$_UILegibilitySettings$setPrimaryColor$)(id, SEL, id);
static void _patched_ftt_meth_$_UILegibilitySettings$setPrimaryColor$(id self, SEL _cmd, id arg1) {
    // ...set Primary Color >>> Status Bar, LS Clock/Date, Page Dots (selected), Icon Labels
    arg1 = [UIColor colorWithRed:35/255.0 green:218/255.0 blue:218/255.0 alpha:255/255.0];
    _orig_ftt_meth_$_UILegibilitySettings$setPrimaryColor$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$_UILegibilitySettings$setSecondaryColor$)(id, SEL, id);
static void _patched_ftt_meth_$_UILegibilitySettings$setSecondaryColor$(id self, SEL _cmd, id arg1) {
    // ...set Secondary Color >>> LS Grabbers, Page Dots (unselected)
    arg1 = [UIColor colorWithRed:18/255.0 green:112/255.0 blue:112/255.0 alpha:255/255.0];
    _orig_ftt_meth_$_UILegibilitySettings$setSecondaryColor$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBLockScreenView = objc_getClass("SBLockScreenView");
    MSHookMessageEx(_ftt_class_SBLockScreenView, @selector(legibilitySettingsOverrideVibrancy), (IMP)_patched_ftt_meth_$SBLockScreenView$legibilitySettingsOverrideVibrancy, NULL);
    Class _ftt_class__UILegibilitySettings = objc_getClass("_UILegibilitySettings");
    MSHookMessageEx(_ftt_class__UILegibilitySettings, @selector(setPrimaryColor:), (IMP)_patched_ftt_meth_$_UILegibilitySettings$setPrimaryColor$, (IMP *)_orig_ftt_meth_$_UILegibilitySettings$setPrimaryColor$);
    MSHookMessageEx(_ftt_class__UILegibilitySettings, @selector(setSecondaryColor:), (IMP)_patched_ftt_meth_$_UILegibilitySettings$setSecondaryColor$, (IMP *)_orig_ftt_meth_$_UILegibilitySettings$setSecondaryColor$);
}
