#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$_UIBarBackground$configureEffectForStyle$backgroundTintColor$forceOpaque$)(id, SEL, long long, id, bool);
static void _patched_ftt_meth_$_UIBarBackground$configureEffectForStyle$backgroundTintColor$forceOpaque$(id self, SEL _cmd, long long arg1, id arg2, bool arg3) {
    // Style (Arg#1): {Light=0, Dark=1} Color: (Arg#2): {Set Color...} Opaque (Arg#4): {Yes=T, No=F}
    arg2 = [UIColor colorWithRed:29/255.0 green:29/255.0 blue:29/255.0 alpha:255/255.0];
    arg1 = 1;
    _orig_ftt_meth_$_UIBarBackground$configureEffectForStyle$backgroundTintColor$forceOpaque$(self, _cmd, arg1, arg2, arg3);
}

static long long _patched_ftt_meth_$UINavigationBar$_barStyle$(id self, SEL _cmd, bool arg1) {
    // Nav/Status Bar Text Style: {White=1, Black=0}
    return 1;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class__UIBarBackground = objc_getClass("_UIBarBackground");
    MSHookMessageEx(_ftt_class__UIBarBackground, @selector(configureEffectForStyle:backgroundTintColor:forceOpaque:), (IMP)_patched_ftt_meth_$_UIBarBackground$configureEffectForStyle$backgroundTintColor$forceOpaque$, (IMP *)_orig_ftt_meth_$_UIBarBackground$configureEffectForStyle$backgroundTintColor$forceOpaque$);
    Class _ftt_class_UINavigationBar = objc_getClass("UINavigationBar");
    MSHookMessageEx(_ftt_class_UINavigationBar, @selector(_barStyle:), (IMP)_patched_ftt_meth_$UINavigationBar$_barStyle$, NULL);
}
