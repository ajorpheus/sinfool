#import <UIKit/UIKit.h>

#include <substrate.h>

static float _patched_ftt_meth_$SBLockOverlayStyleProperties$blurRadius(id self, SEL _cmd) {
    // Wallpaper View:  (0=transparent, pass-through=stock)
    return 0.5;
}

static float _patched_ftt_meth_$SBLockOverlayStyleProperties$tintAlpha(id self, SEL _cmd) {
    // Tint Alpha:  (0.0-1.0, pass-through=stock, 0=none/transparent)
    return 0;
}

static void (*_orig_ftt_meth_$TPRevealingRingView$setDefaultRingStrokeWidth$)(id, SEL, float);
static void _patched_ftt_meth_$TPRevealingRingView$setDefaultRingStrokeWidth$(id self, SEL _cmd, float arg1) {
    // Button Ring Width:	select any number... (0=none, OR delete this entry to restore stock rings)
    arg1 = 0;
    _orig_ftt_meth_$TPRevealingRingView$setDefaultRingStrokeWidth$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$TPPathView$setFillColor$)(id, SEL, id);
static void _patched_ftt_meth_$TPPathView$setFillColor$(id self, SEL _cmd, id arg1) {
    // Button Color
    arg1 = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:255/255.0];
    _orig_ftt_meth_$TPPathView$setFillColor$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$SBUIPasscodeLockNumberPad$setShowsEmergencyCallButton$)(id, SEL, BOOL);
static void _patched_ftt_meth_$SBUIPasscodeLockNumberPad$setShowsEmergencyCallButton$(id self, SEL _cmd, BOOL arg1) {
    // Show Emergency Call Button: (true=yes, false=no)
    arg1 = 1;
    _orig_ftt_meth_$SBUIPasscodeLockNumberPad$setShowsEmergencyCallButton$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBLockOverlayStyleProperties = objc_getClass("SBLockOverlayStyleProperties");
    MSHookMessageEx(_ftt_class_SBLockOverlayStyleProperties, @selector(blurRadius), (IMP)_patched_ftt_meth_$SBLockOverlayStyleProperties$blurRadius, NULL);
    MSHookMessageEx(_ftt_class_SBLockOverlayStyleProperties, @selector(tintAlpha), (IMP)_patched_ftt_meth_$SBLockOverlayStyleProperties$tintAlpha, NULL);
    Class _ftt_class_TPRevealingRingView = objc_getClass("TPRevealingRingView");
    MSHookMessageEx(_ftt_class_TPRevealingRingView, @selector(setDefaultRingStrokeWidth:), (IMP)_patched_ftt_meth_$TPRevealingRingView$setDefaultRingStrokeWidth$, (IMP *)_orig_ftt_meth_$TPRevealingRingView$setDefaultRingStrokeWidth$);
    Class _ftt_class_TPPathView = objc_getClass("TPPathView");
    MSHookMessageEx(_ftt_class_TPPathView, @selector(setFillColor:), (IMP)_patched_ftt_meth_$TPPathView$setFillColor$, (IMP *)_orig_ftt_meth_$TPPathView$setFillColor$);
    Class _ftt_class_SBUIPasscodeLockNumberPad = objc_getClass("SBUIPasscodeLockNumberPad");
    MSHookMessageEx(_ftt_class_SBUIPasscodeLockNumberPad, @selector(setShowsEmergencyCallButton:), (IMP)_patched_ftt_meth_$SBUIPasscodeLockNumberPad$setShowsEmergencyCallButton$, (IMP *)_orig_ftt_meth_$SBUIPasscodeLockNumberPad$setShowsEmergencyCallButton$);
}
