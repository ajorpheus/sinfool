#import <UIKit/UIKit.h>

#include <substrate.h>

static id _patched_ftt_meth_$UIStatusBarStyleAttributes$foregroundStyle(id self, SEL _cmd) {
    // Status Bar Foreground:	(NULL) = NO, pass-through = YES
    return NULL;
}

static id _patched_ftt_meth_$PHHandsetDialerLCDView$lcdColor(id self, SEL _cmd) {
    // LCD Display:	(NULL) = Transparent, pass-through = White
    return NULL;
}

static id _patched_ftt_meth_$PHHandsetDialerView$dialerColor(id self, SEL _cmd) {
    // •
    return NULL;
}

static void (*_orig_ftt_meth_$TPPathView$setFillColor$)(id, SEL, id);
static void _patched_ftt_meth_$TPPathView$setFillColor$(id self, SEL _cmd, id arg1) {
    // Button Color:  (NOTE):	This changes the button color BUT it also adds solid colored buttons to the in call keypad.  If you're not changing the button color, I recommend DELETING this entry.
    arg1 = [UIColor colorWithRed:94/255.0 green:214/255.0 blue:214/255.0 alpha:255/255.0];
    _orig_ftt_meth_$TPPathView$setFillColor$(self, _cmd, arg1);
}

static float _patched_ftt_meth_$TPRevealingRingView$alphaInsideRing(id self, SEL _cmd) {
    // Button View/Alpha:	(0.0-1.0 Higher #=Darker) ie. 0=None, 0.05=Light, 0.25=darker etc.
    return 0;
}

static void (*_orig_ftt_meth_$TPRevealingRingView$setDefaultRingStrokeWidth$)(id, SEL, float);
static void _patched_ftt_meth_$TPRevealingRingView$setDefaultRingStrokeWidth$(id self, SEL _cmd, float arg1) {
    // Button Size:	(Best Range 0-12, Higher # = Smaller Size Button) 2=Stock
    arg1 = 0;
    _orig_ftt_meth_$TPRevealingRingView$setDefaultRingStrokeWidth$(self, _cmd, arg1);
}

static int _patched_ftt_meth_$TPRevealingRingView$animationStyle(id self, SEL _cmd) {
    // Button Animation:  -1=None, 0=After Pressed, 1=As Pressed
    return 0;
}

static void (*_orig_ftt_meth_$UITabBarButton$_setContentTintColor$forState$)(id, SEL, id, unsigned int);
static void _patched_ftt_meth_$UITabBarButton$_setContentTintColor$forState$(id self, SEL _cmd, id arg1, unsigned int arg2) {
    // Tab Bar Image Color
    arg1 = [UIColor colorWithRed:136/255.0 green:136/255.0 blue:136/255.0 alpha:255/255.0];
    _orig_ftt_meth_$UITabBarButton$_setContentTintColor$forState$(self, _cmd, arg1, arg2);
}

static void (*_orig_ftt_meth_$UITabBarSwappableImageView$showAlternateImage$)(id, SEL, BOOL);
static void _patched_ftt_meth_$UITabBarSwappableImageView$showAlternateImage$(id self, SEL _cmd, BOOL arg1) {
    // Show Alternate Tab Bar Image:  (TRUE or FALSE)
    arg1 = 0;
    _orig_ftt_meth_$UITabBarSwappableImageView$showAlternateImage$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_UIStatusBarStyleAttributes = objc_getClass("UIStatusBarStyleAttributes");
    MSHookMessageEx(_ftt_class_UIStatusBarStyleAttributes, @selector(foregroundStyle), (IMP)_patched_ftt_meth_$UIStatusBarStyleAttributes$foregroundStyle, NULL);
    Class _ftt_class_PHHandsetDialerLCDView = objc_getClass("PHHandsetDialerLCDView");
    MSHookMessageEx(_ftt_class_PHHandsetDialerLCDView, @selector(lcdColor), (IMP)_patched_ftt_meth_$PHHandsetDialerLCDView$lcdColor, NULL);
    Class _ftt_class_PHHandsetDialerView = objc_getClass("PHHandsetDialerView");
    MSHookMessageEx(_ftt_class_PHHandsetDialerView, @selector(dialerColor), (IMP)_patched_ftt_meth_$PHHandsetDialerView$dialerColor, NULL);
    Class _ftt_class_TPPathView = objc_getClass("TPPathView");
    MSHookMessageEx(_ftt_class_TPPathView, @selector(setFillColor:), (IMP)_patched_ftt_meth_$TPPathView$setFillColor$, (IMP *)_orig_ftt_meth_$TPPathView$setFillColor$);
    Class _ftt_class_TPRevealingRingView = objc_getClass("TPRevealingRingView");
    MSHookMessageEx(_ftt_class_TPRevealingRingView, @selector(alphaInsideRing), (IMP)_patched_ftt_meth_$TPRevealingRingView$alphaInsideRing, NULL);
    MSHookMessageEx(_ftt_class_TPRevealingRingView, @selector(setDefaultRingStrokeWidth:), (IMP)_patched_ftt_meth_$TPRevealingRingView$setDefaultRingStrokeWidth$, (IMP *)_orig_ftt_meth_$TPRevealingRingView$setDefaultRingStrokeWidth$);
    MSHookMessageEx(_ftt_class_TPRevealingRingView, @selector(animationStyle), (IMP)_patched_ftt_meth_$TPRevealingRingView$animationStyle, NULL);
    Class _ftt_class_UITabBarButton = objc_getClass("UITabBarButton");
    MSHookMessageEx(_ftt_class_UITabBarButton, @selector(_setContentTintColor:forState:), (IMP)_patched_ftt_meth_$UITabBarButton$_setContentTintColor$forState$, (IMP *)_orig_ftt_meth_$UITabBarButton$_setContentTintColor$forState$);
    Class _ftt_class_UITabBarSwappableImageView = objc_getClass("UITabBarSwappableImageView");
    MSHookMessageEx(_ftt_class_UITabBarSwappableImageView, @selector(showAlternateImage:), (IMP)_patched_ftt_meth_$UITabBarSwappableImageView$showAlternateImage$, (IMP *)_orig_ftt_meth_$UITabBarSwappableImageView$showAlternateImage$);
}
