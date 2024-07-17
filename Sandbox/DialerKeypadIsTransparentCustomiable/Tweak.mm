#import <UIKit/UIKit.h>

#include <substrate.h>

static id (*_orig_ftt_meth_$UIStatusBarNewUIStyleAttributes$initWithRequest$backgroundColor$foregroundColor$hasBusyBackground$)(id, SEL, id, id, id, bool);
static id _patched_ftt_meth_$UIStatusBarNewUIStyleAttributes$initWithRequest$backgroundColor$foregroundColor$hasBusyBackground$(id self, SEL _cmd, id arg1, id arg2, id arg3, bool arg4) {
    // Status Bar Visibility/Colors:  Hide=(Return Value):NULL, BG Color=(Arg#2), FG Color=(Arg#3)
    arg3 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:255/255.0];
    return _orig_ftt_meth_$UIStatusBarNewUIStyleAttributes$initWithRequest$backgroundColor$foregroundColor$hasBusyBackground$(self, _cmd, arg1, arg2, arg3, arg4);
}

static bool _patched_ftt_meth_$UIStatusBarNewUIStyleAttributes$isTranslucent(id self, SEL _cmd) {
    // •
    return 1;
}

static id _patched_ftt_meth_$PHHandsetDialerView$dialerColor(id self, SEL _cmd) {
    // •
    return NULL;
}

static void (*_orig_ftt_meth_$TPNumberPadButton$setColor$)(id, SEL, id);
static void _patched_ftt_meth_$TPNumberPadButton$setColor$(id self, SEL _cmd, id arg1) {
    // •
    arg1 = [UIColor colorWithRed:255/255.0 green:127/255.0 blue:0/255.0 alpha:255/255.0];
    _orig_ftt_meth_$TPNumberPadButton$setColor$(self, _cmd, arg1);
}

static double _patched_ftt_meth_$TPNumberPadButton$alphaOutsideAndInsideRing(id self, SEL _cmd) {
    // •
    return 0;
}

static void (*_orig_ftt_meth_$TPRevealingRingView$setAlphaInsideRing$)(id, SEL, double);
static void _patched_ftt_meth_$TPRevealingRingView$setAlphaInsideRing$(id self, SEL _cmd, double arg1) {
    // Dialer Button Alpha/Visibility: (0.0-1.0 Higher #=Darker) ie.  0=Hide/None, 0.05=Very Light, 0.25=Darker, 0.5=Half, 1=Full etc.
    arg1 = 0.5;
    _orig_ftt_meth_$TPRevealingRingView$setAlphaInsideRing$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$TPPathView$setFillColor$)(id, SEL, id);
static void _patched_ftt_meth_$TPPathView$setFillColor$(id self, SEL _cmd, id arg1) {
    // Dialer Button Color
    arg1 = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:255/255.0];
    _orig_ftt_meth_$TPPathView$setFillColor$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$UITabBarButton$_setContentTintColor$forState$)(id, SEL, id, unsigned long long);
static void _patched_ftt_meth_$UITabBarButton$_setContentTintColor$forState$(id self, SEL _cmd, id arg1, unsigned long long arg2) {
    // Unselected Tab Bar Image Color [iOS GRAY=929292]
    arg1 = [UIColor colorWithRed:146/255.0 green:146/255.0 blue:146/255.0 alpha:255/255.0];
    _orig_ftt_meth_$UITabBarButton$_setContentTintColor$forState$(self, _cmd, arg1, arg2);
}

static id _patched_ftt_meth_$UITabBarSwappableImageView$initWithImage$alternateImage$(id self, SEL _cmd, id arg1, id arg2) {
    // Tab Bar Image:	Hide=NULL, Show=pass-through
    return NULL;
}

static bool _patched_ftt_meth_$UITabBar$_backgroundNeedsUpdate(id self, SEL _cmd) {
    // Tab Bar Background:  Hide=FALSE, Show=pass-through
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_UIStatusBarNewUIStyleAttributes = objc_getClass("UIStatusBarNewUIStyleAttributes");
    MSHookMessageEx(_ftt_class_UIStatusBarNewUIStyleAttributes, @selector(initWithRequest:backgroundColor:foregroundColor:hasBusyBackground:), (IMP)_patched_ftt_meth_$UIStatusBarNewUIStyleAttributes$initWithRequest$backgroundColor$foregroundColor$hasBusyBackground$, (IMP *)_orig_ftt_meth_$UIStatusBarNewUIStyleAttributes$initWithRequest$backgroundColor$foregroundColor$hasBusyBackground$);
    MSHookMessageEx(_ftt_class_UIStatusBarNewUIStyleAttributes, @selector(isTranslucent), (IMP)_patched_ftt_meth_$UIStatusBarNewUIStyleAttributes$isTranslucent, NULL);
    Class _ftt_class_PHHandsetDialerView = objc_getClass("PHHandsetDialerView");
    MSHookMessageEx(_ftt_class_PHHandsetDialerView, @selector(dialerColor), (IMP)_patched_ftt_meth_$PHHandsetDialerView$dialerColor, NULL);
    Class _ftt_class_TPNumberPadButton = objc_getClass("TPNumberPadButton");
    MSHookMessageEx(_ftt_class_TPNumberPadButton, @selector(setColor:), (IMP)_patched_ftt_meth_$TPNumberPadButton$setColor$, (IMP *)_orig_ftt_meth_$TPNumberPadButton$setColor$);
    MSHookMessageEx(_ftt_class_TPNumberPadButton, @selector(alphaOutsideAndInsideRing), (IMP)_patched_ftt_meth_$TPNumberPadButton$alphaOutsideAndInsideRing, NULL);
    Class _ftt_class_TPRevealingRingView = objc_getClass("TPRevealingRingView");
    MSHookMessageEx(_ftt_class_TPRevealingRingView, @selector(setAlphaInsideRing:), (IMP)_patched_ftt_meth_$TPRevealingRingView$setAlphaInsideRing$, (IMP *)_orig_ftt_meth_$TPRevealingRingView$setAlphaInsideRing$);
    Class _ftt_class_TPPathView = objc_getClass("TPPathView");
    MSHookMessageEx(_ftt_class_TPPathView, @selector(setFillColor:), (IMP)_patched_ftt_meth_$TPPathView$setFillColor$, (IMP *)_orig_ftt_meth_$TPPathView$setFillColor$);
    Class _ftt_class_UITabBarButton = objc_getClass("UITabBarButton");
    MSHookMessageEx(_ftt_class_UITabBarButton, @selector(_setContentTintColor:forState:), (IMP)_patched_ftt_meth_$UITabBarButton$_setContentTintColor$forState$, (IMP *)_orig_ftt_meth_$UITabBarButton$_setContentTintColor$forState$);
    Class _ftt_class_UITabBarSwappableImageView = objc_getClass("UITabBarSwappableImageView");
    MSHookMessageEx(_ftt_class_UITabBarSwappableImageView, @selector(initWithImage:alternateImage:), (IMP)_patched_ftt_meth_$UITabBarSwappableImageView$initWithImage$alternateImage$, NULL);
    Class _ftt_class_UITabBar = objc_getClass("UITabBar");
    MSHookMessageEx(_ftt_class_UITabBar, @selector(_backgroundNeedsUpdate), (IMP)_patched_ftt_meth_$UITabBar$_backgroundNeedsUpdate, NULL);
}
