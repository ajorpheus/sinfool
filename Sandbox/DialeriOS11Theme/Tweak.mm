#import <UIKit/UIKit.h>

#include <substrate.h>

static id _patched_ftt_meth_$UIStatusBar$foregroundColor(id self, SEL _cmd) {
    // Status Bar - Foreground Color
    return [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:255/255.0];
}

static void (*_orig_ftt_meth_$PHHandsetDialerLCDView$setBackgroundColor$)(id, SEL, id);
static void _patched_ftt_meth_$PHHandsetDialerLCDView$setBackgroundColor$(id self, SEL _cmd, id arg1) {
    // Dialer - Background Color #1
    arg1 = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:255/255.0];
    _orig_ftt_meth_$PHHandsetDialerLCDView$setBackgroundColor$(self, _cmd, arg1);
}

static id _patched_ftt_meth_$PHHandsetDialerView$dialerColor(id self, SEL _cmd) {
    // Dialer - Background Color #2
    return [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:255/255.0];
}

static void (*_orig_ftt_meth_$TPRevealingRingView$setColorInsideRing$)(id, SEL, id);
static void _patched_ftt_meth_$TPRevealingRingView$setColorInsideRing$(id self, SEL _cmd, id arg1) {
    // Dialer - Button Color
    arg1 = [UIColor colorWithRed:229/255.0 green:229/255.0 blue:229/255.0 alpha:255/255.0];
    _orig_ftt_meth_$TPRevealingRingView$setColorInsideRing$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$PhoneRootView$setBackgroundColor$)(id, SEL, id);
static void _patched_ftt_meth_$PhoneRootView$setBackgroundColor$(id self, SEL _cmd, id arg1) {
    // Dialer - Button Highlight Color
    arg1 = [UIColor colorWithRed:186/255.0 green:186/255.0 blue:186/255.0 alpha:255/255.0];
    _orig_ftt_meth_$PhoneRootView$setBackgroundColor$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$TPRevealingRingView$setDefaultRingStrokeWidth$)(id, SEL, double);
static void _patched_ftt_meth_$TPRevealingRingView$setDefaultRingStrokeWidth$(id self, SEL _cmd, double arg1) {
    // Dialer - Button Ring Width
    arg1 = -0.5;
    _orig_ftt_meth_$TPRevealingRingView$setDefaultRingStrokeWidth$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$TPSuperBottomBarButton$setBackgroundColor$)(id, SEL, id);
static void _patched_ftt_meth_$TPSuperBottomBarButton$setBackgroundColor$(id self, SEL _cmd, id arg1) {
    // Dialer - Call Button Color (iOS 9)
    arg1 = [UIColor colorWithRed:76/255.0 green:217/255.0 blue:100/255.0 alpha:255/255.0];
    _orig_ftt_meth_$TPSuperBottomBarButton$setBackgroundColor$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$PHBottomBarButton$setBackgroundColor$)(id, SEL, id);
static void _patched_ftt_meth_$PHBottomBarButton$setBackgroundColor$(id self, SEL _cmd, id arg1) {
    // Dialer - Call Button Color (iOS 10)
    arg1 = [UIColor colorWithRed:76/255.0 green:217/255.0 blue:100/255.0 alpha:255/255.0];
    _orig_ftt_meth_$PHBottomBarButton$setBackgroundColor$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$UITabBarButton$_setContentTintColor$forState$)(id, SEL, id, unsigned long long);
static void _patched_ftt_meth_$UITabBarButton$_setContentTintColor$forState$(id self, SEL _cmd, id arg1, unsigned long long arg2) {
    // Tab Bar - Unselected Image Color
    arg1 = [UIColor colorWithRed:162/255.0 green:162/255.0 blue:162/255.0 alpha:255/255.0];
    _orig_ftt_meth_$UITabBarButton$_setContentTintColor$forState$(self, _cmd, arg1, arg2);
}

static void (*_orig_ftt_meth_$UITabBarSwappableImageView$showAlternateImage$)(id, SEL, bool);
static void _patched_ftt_meth_$UITabBarSwappableImageView$showAlternateImage$(id self, SEL _cmd, bool arg1) {
    // Tab Bar - Alternate Image
    arg1 = 1;
    _orig_ftt_meth_$UITabBarSwappableImageView$showAlternateImage$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_UIStatusBar = objc_getClass("UIStatusBar");
    MSHookMessageEx(_ftt_class_UIStatusBar, @selector(foregroundColor), (IMP)_patched_ftt_meth_$UIStatusBar$foregroundColor, NULL);
    Class _ftt_class_PHHandsetDialerLCDView = objc_getClass("PHHandsetDialerLCDView");
    MSHookMessageEx(_ftt_class_PHHandsetDialerLCDView, @selector(setBackgroundColor:), (IMP)_patched_ftt_meth_$PHHandsetDialerLCDView$setBackgroundColor$, (IMP *)_orig_ftt_meth_$PHHandsetDialerLCDView$setBackgroundColor$);
    Class _ftt_class_PHHandsetDialerView = objc_getClass("PHHandsetDialerView");
    MSHookMessageEx(_ftt_class_PHHandsetDialerView, @selector(dialerColor), (IMP)_patched_ftt_meth_$PHHandsetDialerView$dialerColor, NULL);
    Class _ftt_class_TPRevealingRingView = objc_getClass("TPRevealingRingView");
    MSHookMessageEx(_ftt_class_TPRevealingRingView, @selector(setColorInsideRing:), (IMP)_patched_ftt_meth_$TPRevealingRingView$setColorInsideRing$, (IMP *)_orig_ftt_meth_$TPRevealingRingView$setColorInsideRing$);
    Class _ftt_class_PhoneRootView = objc_getClass("PhoneRootView");
    MSHookMessageEx(_ftt_class_PhoneRootView, @selector(setBackgroundColor:), (IMP)_patched_ftt_meth_$PhoneRootView$setBackgroundColor$, (IMP *)_orig_ftt_meth_$PhoneRootView$setBackgroundColor$);
    MSHookMessageEx(_ftt_class_TPRevealingRingView, @selector(setDefaultRingStrokeWidth:), (IMP)_patched_ftt_meth_$TPRevealingRingView$setDefaultRingStrokeWidth$, (IMP *)_orig_ftt_meth_$TPRevealingRingView$setDefaultRingStrokeWidth$);
    Class _ftt_class_TPSuperBottomBarButton = objc_getClass("TPSuperBottomBarButton");
    MSHookMessageEx(_ftt_class_TPSuperBottomBarButton, @selector(setBackgroundColor:), (IMP)_patched_ftt_meth_$TPSuperBottomBarButton$setBackgroundColor$, (IMP *)_orig_ftt_meth_$TPSuperBottomBarButton$setBackgroundColor$);
    Class _ftt_class_PHBottomBarButton = objc_getClass("PHBottomBarButton");
    MSHookMessageEx(_ftt_class_PHBottomBarButton, @selector(setBackgroundColor:), (IMP)_patched_ftt_meth_$PHBottomBarButton$setBackgroundColor$, (IMP *)_orig_ftt_meth_$PHBottomBarButton$setBackgroundColor$);
    Class _ftt_class_UITabBarButton = objc_getClass("UITabBarButton");
    MSHookMessageEx(_ftt_class_UITabBarButton, @selector(_setContentTintColor:forState:), (IMP)_patched_ftt_meth_$UITabBarButton$_setContentTintColor$forState$, (IMP *)_orig_ftt_meth_$UITabBarButton$_setContentTintColor$forState$);
    Class _ftt_class_UITabBarSwappableImageView = objc_getClass("UITabBarSwappableImageView");
    MSHookMessageEx(_ftt_class_UITabBarSwappableImageView, @selector(showAlternateImage:), (IMP)_patched_ftt_meth_$UITabBarSwappableImageView$showAlternateImage$, (IMP *)_orig_ftt_meth_$UITabBarSwappableImageView$showAlternateImage$);
}
