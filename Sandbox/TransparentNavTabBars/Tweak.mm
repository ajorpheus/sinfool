#import <UIKit/UIKit.h>

#include <substrate.h>

static id (*_orig_ftt_meth_$UIStatusBarForegroundStyleAttributes$initWithHeight$legibilityStyle$tintColor$hasBusyBackground$idiom$)(id, SEL, double, long long, id, bool, long long);
static id _patched_ftt_meth_$UIStatusBarForegroundStyleAttributes$initWithHeight$legibilityStyle$tintColor$hasBusyBackground$idiom$(id self, SEL _cmd, double arg1, long long arg2, id arg3, bool arg4, long long arg5) {
    // Set Status Bar Color... (Arg#3)
    arg3 = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:255/255.0];
    return _orig_ftt_meth_$UIStatusBarForegroundStyleAttributes$initWithHeight$legibilityStyle$tintColor$hasBusyBackground$idiom$(self, _cmd, arg1, arg2, arg3, arg4, arg5);
}

static bool _patched_ftt_meth_$UINavigationItemView$_useSilverLookForBarStyle$(id self, SEL _cmd, long long arg1) {
    // Nav Bar Uses Silver Look Title Text
    return 1;
}

static void (*_orig_ftt_meth_$PUPhotoBrowserTitleView$setTextColor$)(id, SEL, id);
static void _patched_ftt_meth_$PUPhotoBrowserTitleView$setTextColor$(id self, SEL _cmd, id arg1) {
    // Set Browser Title Text Color...
    arg1 = [UIColor colorWithRed:113/255.0 green:120/255.0 blue:128/255.0 alpha:255/255.0];
    _orig_ftt_meth_$PUPhotoBrowserTitleView$setTextColor$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_UIStatusBarForegroundStyleAttributes = objc_getClass("UIStatusBarForegroundStyleAttributes");
    MSHookMessageEx(_ftt_class_UIStatusBarForegroundStyleAttributes, @selector(initWithHeight:legibilityStyle:tintColor:hasBusyBackground:idiom:), (IMP)_patched_ftt_meth_$UIStatusBarForegroundStyleAttributes$initWithHeight$legibilityStyle$tintColor$hasBusyBackground$idiom$, (IMP *)_orig_ftt_meth_$UIStatusBarForegroundStyleAttributes$initWithHeight$legibilityStyle$tintColor$hasBusyBackground$idiom$);
    Class _ftt_class_UINavigationItemView = objc_getClass("UINavigationItemView");
    MSHookMessageEx(_ftt_class_UINavigationItemView, @selector(_useSilverLookForBarStyle:), (IMP)_patched_ftt_meth_$UINavigationItemView$_useSilverLookForBarStyle$, NULL);
    Class _ftt_class_PUPhotoBrowserTitleView = objc_getClass("PUPhotoBrowserTitleView");
    MSHookMessageEx(_ftt_class_PUPhotoBrowserTitleView, @selector(setTextColor:), (IMP)_patched_ftt_meth_$PUPhotoBrowserTitleView$setTextColor$, (IMP *)_orig_ftt_meth_$PUPhotoBrowserTitleView$setTextColor$);
}
