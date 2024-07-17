#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$_UILegibilitySettings$setPrimaryColor$)(id, SEL, id);
static void _patched_ftt_meth_$_UILegibilitySettings$setPrimaryColor$(id self, SEL _cmd, id arg1) {
    // PRIMARY COLOR:  Status Bar, Clock/Date, Page Dot (selected), Icon Labels & ~some tweaks i.e. Forecast~
    arg1 = [UIColor colorWithRed:255/255.0 green:127/255.0 blue:0/255.0 alpha:255/255.0];
    _orig_ftt_meth_$_UILegibilitySettings$setPrimaryColor$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$_UILegibilitySettings$setSecondaryColor$)(id, SEL, id);
static void _patched_ftt_meth_$_UILegibilitySettings$setSecondaryColor$(id self, SEL _cmd, id arg1) {
    // SECONDARY COLOR:  NC/CC/Camera Grabbers & Page Dots (unselected)
    arg1 = [UIColor colorWithRed:114/255.0 green:17/255.0 blue:153/255.0 alpha:255/255.0];
    _orig_ftt_meth_$_UILegibilitySettings$setSecondaryColor$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class__UILegibilitySettings = objc_getClass("_UILegibilitySettings");
    MSHookMessageEx(_ftt_class__UILegibilitySettings, @selector(setPrimaryColor:), (IMP)_patched_ftt_meth_$_UILegibilitySettings$setPrimaryColor$, (IMP *)_orig_ftt_meth_$_UILegibilitySettings$setPrimaryColor$);
    MSHookMessageEx(_ftt_class__UILegibilitySettings, @selector(setSecondaryColor:), (IMP)_patched_ftt_meth_$_UILegibilitySettings$setSecondaryColor$, (IMP *)_orig_ftt_meth_$_UILegibilitySettings$setSecondaryColor$);
}
