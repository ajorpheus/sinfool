#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$_UIBarBackground$configureEffectForStyle$backgroundTintColor$forceOpaque$)(id, SEL, long long, id, bool);
static void _patched_ftt_meth_$_UIBarBackground$configureEffectForStyle$backgroundTintColor$forceOpaque$(id self, SEL _cmd, long long arg1, id arg2, bool arg3) {
    arg1 = 0;
    arg3 = 1;
    arg2 = [UIColor colorWithRed:249/255.0 green:249/255.0 blue:249/255.0 alpha:255/255.0];
    _orig_ftt_meth_$_UIBarBackground$configureEffectForStyle$backgroundTintColor$forceOpaque$(self, _cmd, arg1, arg2, arg3);
}

static void (*_orig_ftt_meth_$_UIVisualEffectFilterView$setBackgroundColor$)(id, SEL, id);
static void _patched_ftt_meth_$_UIVisualEffectFilterView$setBackgroundColor$(id self, SEL _cmd, id arg1) {
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:255/255.0];
    _orig_ftt_meth_$_UIVisualEffectFilterView$setBackgroundColor$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$_UIActivityGroupListViewController$setDarkStyleOnLegacyApp$)(id, SEL, bool);
static void _patched_ftt_meth_$_UIActivityGroupListViewController$setDarkStyleOnLegacyApp$(id self, SEL _cmd, bool arg1) {
    arg1 = 1;
    _orig_ftt_meth_$_UIActivityGroupListViewController$setDarkStyleOnLegacyApp$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$UIActivityGroupViewController$setDarkStyleOnLegacyApp$)(id, SEL, bool);
static void _patched_ftt_meth_$UIActivityGroupViewController$setDarkStyleOnLegacyApp$(id self, SEL _cmd, bool arg1) {
    arg1 = 1;
    _orig_ftt_meth_$UIActivityGroupViewController$setDarkStyleOnLegacyApp$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class__UIBarBackground = objc_getClass("_UIBarBackground");
    MSHookMessageEx(_ftt_class__UIBarBackground, @selector(configureEffectForStyle:backgroundTintColor:forceOpaque:), (IMP)_patched_ftt_meth_$_UIBarBackground$configureEffectForStyle$backgroundTintColor$forceOpaque$, (IMP *)_orig_ftt_meth_$_UIBarBackground$configureEffectForStyle$backgroundTintColor$forceOpaque$);
    Class _ftt_class__UIVisualEffectFilterView = objc_getClass("_UIVisualEffectFilterView");
    MSHookMessageEx(_ftt_class__UIVisualEffectFilterView, @selector(setBackgroundColor:), (IMP)_patched_ftt_meth_$_UIVisualEffectFilterView$setBackgroundColor$, (IMP *)_orig_ftt_meth_$_UIVisualEffectFilterView$setBackgroundColor$);
    Class _ftt_class__UIActivityGroupListViewController = objc_getClass("_UIActivityGroupListViewController");
    MSHookMessageEx(_ftt_class__UIActivityGroupListViewController, @selector(setDarkStyleOnLegacyApp:), (IMP)_patched_ftt_meth_$_UIActivityGroupListViewController$setDarkStyleOnLegacyApp$, (IMP *)_orig_ftt_meth_$_UIActivityGroupListViewController$setDarkStyleOnLegacyApp$);
    Class _ftt_class_UIActivityGroupViewController = objc_getClass("UIActivityGroupViewController");
    MSHookMessageEx(_ftt_class_UIActivityGroupViewController, @selector(setDarkStyleOnLegacyApp:), (IMP)_patched_ftt_meth_$UIActivityGroupViewController$setDarkStyleOnLegacyApp$, (IMP *)_orig_ftt_meth_$UIActivityGroupViewController$setDarkStyleOnLegacyApp$);
}
