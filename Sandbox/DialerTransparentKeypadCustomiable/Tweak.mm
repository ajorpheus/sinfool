#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$PHHandsetDialerView$setBackgroundColor$)(id, SEL, id);
static void _patched_ftt_meth_$PHHandsetDialerView$setBackgroundColor$(id self, SEL _cmd, id arg1) {
    // Dialer - BG Color: Set Color or Transparent=P
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0/255.0];
    _orig_ftt_meth_$PHHandsetDialerView$setBackgroundColor$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$TPRevealingRingView$setColorInsideRing$)(id, SEL, id);
static void _patched_ftt_meth_$TPRevealingRingView$setColorInsideRing$(id self, SEL _cmd, id arg1) {
    // Dialer - Button Color: Set Color
    arg1 = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:128/255.0];
    _orig_ftt_meth_$TPRevealingRingView$setColorInsideRing$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$TPRevealingRingView$setCornerRadius$)(id, SEL, double);
static void _patched_ftt_meth_$TPRevealingRingView$setCornerRadius$(id self, SEL _cmd, double arg1) {
    // Dialer - Button Corner Radius: (Range: 0.0-26, Square=0, Circle=26)
    arg1 = 26;
    _orig_ftt_meth_$TPRevealingRingView$setCornerRadius$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$TPRevealingRingView$setAnimationStyle$)(id, SEL, int);
static void _patched_ftt_meth_$TPRevealingRingView$setAnimationStyle$(id self, SEL _cmd, int arg1) {
    // Dialer - Button Highlight Animation: After Pressed=0, White As Pressed=1, None=2
    arg1 = 2;
    _orig_ftt_meth_$TPRevealingRingView$setAnimationStyle$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$TPSuperBottomBarButton$setBackgroundColor$)(id, SEL, id);
static void _patched_ftt_meth_$TPSuperBottomBarButton$setBackgroundColor$(id self, SEL _cmd, id arg1) {
    // Call Button - BG Color: Set Color or Hide=P [Stock=4CD964]
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0/255.0];
    _orig_ftt_meth_$TPSuperBottomBarButton$setBackgroundColor$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$PHBottomBarButton$setBackgroundColor$)(id, SEL, id);
static void _patched_ftt_meth_$PHBottomBarButton$setBackgroundColor$(id self, SEL _cmd, id arg1) {
    // Call Button (iOS 10) - BG Color: Set Color or Hide=P [Stock=4CD964]
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0/255.0];
    _orig_ftt_meth_$PHBottomBarButton$setBackgroundColor$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$UITabBarButton$_setContentTintColor$forState$)(id, SEL, id, unsigned long long);
static void _patched_ftt_meth_$UITabBarButton$_setContentTintColor$forState$(id self, SEL _cmd, id arg1, unsigned long long arg2) {
    // Tab Bar - Unselected Image Color: (Arg#1) Set Color [Stock=929292]
    arg1 = [UIColor colorWithRed:146/255.0 green:146/255.0 blue:146/255.0 alpha:255/255.0];
    _orig_ftt_meth_$UITabBarButton$_setContentTintColor$forState$(self, _cmd, arg1, arg2);
}

static void (*_orig_ftt_meth_$PHHandsetDialerLCDView$setBackgroundColor$)(id, SEL, id);
static void _patched_ftt_meth_$PHHandsetDialerLCDView$setBackgroundColor$(id self, SEL _cmd, id arg1) {
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0/255.0];
    _orig_ftt_meth_$PHHandsetDialerLCDView$setBackgroundColor$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$TPRevealingRingView$setColorOutsideRing$)(id, SEL, id);
static void _patched_ftt_meth_$TPRevealingRingView$setColorOutsideRing$(id self, SEL _cmd, id arg1) {
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0/255.0];
    _orig_ftt_meth_$TPRevealingRingView$setColorOutsideRing$(self, _cmd, arg1);
}

static id _patched_ftt_meth_$PHHandsetDialerView$dialerColor(id self, SEL _cmd) {
    return [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0/255.0];
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_PHHandsetDialerView = objc_getClass("PHHandsetDialerView");
    MSHookMessageEx(_ftt_class_PHHandsetDialerView, @selector(setBackgroundColor:), (IMP)_patched_ftt_meth_$PHHandsetDialerView$setBackgroundColor$, (IMP *)_orig_ftt_meth_$PHHandsetDialerView$setBackgroundColor$);
    Class _ftt_class_TPRevealingRingView = objc_getClass("TPRevealingRingView");
    MSHookMessageEx(_ftt_class_TPRevealingRingView, @selector(setColorInsideRing:), (IMP)_patched_ftt_meth_$TPRevealingRingView$setColorInsideRing$, (IMP *)_orig_ftt_meth_$TPRevealingRingView$setColorInsideRing$);
    MSHookMessageEx(_ftt_class_TPRevealingRingView, @selector(setCornerRadius:), (IMP)_patched_ftt_meth_$TPRevealingRingView$setCornerRadius$, (IMP *)_orig_ftt_meth_$TPRevealingRingView$setCornerRadius$);
    MSHookMessageEx(_ftt_class_TPRevealingRingView, @selector(setAnimationStyle:), (IMP)_patched_ftt_meth_$TPRevealingRingView$setAnimationStyle$, (IMP *)_orig_ftt_meth_$TPRevealingRingView$setAnimationStyle$);
    Class _ftt_class_TPSuperBottomBarButton = objc_getClass("TPSuperBottomBarButton");
    MSHookMessageEx(_ftt_class_TPSuperBottomBarButton, @selector(setBackgroundColor:), (IMP)_patched_ftt_meth_$TPSuperBottomBarButton$setBackgroundColor$, (IMP *)_orig_ftt_meth_$TPSuperBottomBarButton$setBackgroundColor$);
    Class _ftt_class_PHBottomBarButton = objc_getClass("PHBottomBarButton");
    MSHookMessageEx(_ftt_class_PHBottomBarButton, @selector(setBackgroundColor:), (IMP)_patched_ftt_meth_$PHBottomBarButton$setBackgroundColor$, (IMP *)_orig_ftt_meth_$PHBottomBarButton$setBackgroundColor$);
    Class _ftt_class_UITabBarButton = objc_getClass("UITabBarButton");
    MSHookMessageEx(_ftt_class_UITabBarButton, @selector(_setContentTintColor:forState:), (IMP)_patched_ftt_meth_$UITabBarButton$_setContentTintColor$forState$, (IMP *)_orig_ftt_meth_$UITabBarButton$_setContentTintColor$forState$);
    Class _ftt_class_PHHandsetDialerLCDView = objc_getClass("PHHandsetDialerLCDView");
    MSHookMessageEx(_ftt_class_PHHandsetDialerLCDView, @selector(setBackgroundColor:), (IMP)_patched_ftt_meth_$PHHandsetDialerLCDView$setBackgroundColor$, (IMP *)_orig_ftt_meth_$PHHandsetDialerLCDView$setBackgroundColor$);
    MSHookMessageEx(_ftt_class_TPRevealingRingView, @selector(setColorOutsideRing:), (IMP)_patched_ftt_meth_$TPRevealingRingView$setColorOutsideRing$, (IMP *)_orig_ftt_meth_$TPRevealingRingView$setColorOutsideRing$);
    MSHookMessageEx(_ftt_class_PHHandsetDialerView, @selector(dialerColor), (IMP)_patched_ftt_meth_$PHHandsetDialerView$dialerColor, NULL);
}
