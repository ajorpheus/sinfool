#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$CCUIControlCenterSettings$setBackgroundDarkening$)(id, SEL, double);
static void _patched_ftt_meth_$CCUIControlCenterSettings$setBackgroundDarkening$(id self, SEL _cmd, double arg1) {
    // Wallpaper Background Darkening: (Range=0.01 - 1.0)
    arg1 = 0.9;
    _orig_ftt_meth_$CCUIControlCenterSettings$setBackgroundDarkening$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$UIImageView$setBackgroundColor$)(id, SEL, id);
static void _patched_ftt_meth_$UIImageView$setBackgroundColor$(id self, SEL _cmd, id arg1) {
    // Bubble BG - Color
    arg1 = [UIColor colorWithRed:34/255.0 green:34/255.0 blue:34/255.0 alpha:255/255.0];
    _orig_ftt_meth_$UIImageView$setBackgroundColor$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$NCMaterialSettings$setCutOutOverlayAlpha$)(id, SEL, double);
static void _patched_ftt_meth_$NCMaterialSettings$setCutOutOverlayAlpha$(id self, SEL _cmd, double arg1) {
    // Buttons - Alpha: (Range=0.0 - 1.0)
    arg1 = 0.25;
    _orig_ftt_meth_$NCMaterialSettings$setCutOutOverlayAlpha$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$NCMaterialSettings$setCutOutOverlayWhite$)(id, SEL, double);
static void _patched_ftt_meth_$NCMaterialSettings$setCutOutOverlayWhite$(id self, SEL _cmd, double arg1) {
    // Buttons - White Overlay/Media Picker BG: (Range=0.0 - 2.0), Stock=.5, D=Adaptive Media Picker BG
    arg1 = 0;
    _orig_ftt_meth_$NCMaterialSettings$setCutOutOverlayWhite$(self, _cmd, arg1);
}

static id (*_orig_ftt_meth_$CCUIControlCenterVisualEffect$initWithPrivateStyle$)(id, SEL, long long);
static id _patched_ftt_meth_$CCUIControlCenterVisualEffect$initWithPrivateStyle$(id self, SEL _cmd, long long arg1) {
    // Buttons - Text Color: (Black=P, White=1, White w/Blue MP Controls, White w/Black Selected Glyph Toggle=0, White w/Gray Selected/Slider Track/MP Controls=2)
    arg1 = 1;
    return _orig_ftt_meth_$CCUIControlCenterVisualEffect$initWithPrivateStyle$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$MPAVRoutingTableViewCell$setIconStyle$)(id, SEL, unsigned long long);
static void _patched_ftt_meth_$MPAVRoutingTableViewCell$setIconStyle$(id self, SEL _cmd, unsigned long long arg1) {
    // Buttons - Media Player Icon: (Black=0, White=1)
    arg1 = 1;
    _orig_ftt_meth_$MPAVRoutingTableViewCell$setIconStyle$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$MPAVRoutingTableViewCell$setTintColor$)(id, SEL, id);
static void _patched_ftt_meth_$MPAVRoutingTableViewCell$setTintColor$(id self, SEL _cmd, id arg1) {
    // Buttons - Media Player Text Color
    arg1 = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:255/255.0];
    _orig_ftt_meth_$MPAVRoutingTableViewCell$setTintColor$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$NCMaterialSettings$setCcWhiteOverlayAlpha$)(id, SEL, double);
static void _patched_ftt_meth_$NCMaterialSettings$setCcWhiteOverlayAlpha$(id self, SEL _cmd, double arg1) {
    arg1 = 0;
    _orig_ftt_meth_$NCMaterialSettings$setCcWhiteOverlayAlpha$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$NCMaterialSettings$setDarkenedWhiteAlpha$)(id, SEL, double);
static void _patched_ftt_meth_$NCMaterialSettings$setDarkenedWhiteAlpha$(id self, SEL _cmd, double arg1) {
    arg1 = 0;
    _orig_ftt_meth_$NCMaterialSettings$setDarkenedWhiteAlpha$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_CCUIControlCenterSettings = objc_getClass("CCUIControlCenterSettings");
    MSHookMessageEx(_ftt_class_CCUIControlCenterSettings, @selector(setBackgroundDarkening:), (IMP)_patched_ftt_meth_$CCUIControlCenterSettings$setBackgroundDarkening$, (IMP *)_orig_ftt_meth_$CCUIControlCenterSettings$setBackgroundDarkening$);
    Class _ftt_class_UIImageView = objc_getClass("UIImageView");
    MSHookMessageEx(_ftt_class_UIImageView, @selector(setBackgroundColor:), (IMP)_patched_ftt_meth_$UIImageView$setBackgroundColor$, (IMP *)_orig_ftt_meth_$UIImageView$setBackgroundColor$);
    Class _ftt_class_NCMaterialSettings = objc_getClass("NCMaterialSettings");
    MSHookMessageEx(_ftt_class_NCMaterialSettings, @selector(setCutOutOverlayAlpha:), (IMP)_patched_ftt_meth_$NCMaterialSettings$setCutOutOverlayAlpha$, (IMP *)_orig_ftt_meth_$NCMaterialSettings$setCutOutOverlayAlpha$);
    MSHookMessageEx(_ftt_class_NCMaterialSettings, @selector(setCutOutOverlayWhite:), (IMP)_patched_ftt_meth_$NCMaterialSettings$setCutOutOverlayWhite$, (IMP *)_orig_ftt_meth_$NCMaterialSettings$setCutOutOverlayWhite$);
    Class _ftt_class_CCUIControlCenterVisualEffect = objc_getClass("CCUIControlCenterVisualEffect");
    MSHookMessageEx(_ftt_class_CCUIControlCenterVisualEffect, @selector(initWithPrivateStyle:), (IMP)_patched_ftt_meth_$CCUIControlCenterVisualEffect$initWithPrivateStyle$, (IMP *)_orig_ftt_meth_$CCUIControlCenterVisualEffect$initWithPrivateStyle$);
    Class _ftt_class_MPAVRoutingTableViewCell = objc_getClass("MPAVRoutingTableViewCell");
    MSHookMessageEx(_ftt_class_MPAVRoutingTableViewCell, @selector(setIconStyle:), (IMP)_patched_ftt_meth_$MPAVRoutingTableViewCell$setIconStyle$, (IMP *)_orig_ftt_meth_$MPAVRoutingTableViewCell$setIconStyle$);
    MSHookMessageEx(_ftt_class_MPAVRoutingTableViewCell, @selector(setTintColor:), (IMP)_patched_ftt_meth_$MPAVRoutingTableViewCell$setTintColor$, (IMP *)_orig_ftt_meth_$MPAVRoutingTableViewCell$setTintColor$);
    MSHookMessageEx(_ftt_class_NCMaterialSettings, @selector(setCcWhiteOverlayAlpha:), (IMP)_patched_ftt_meth_$NCMaterialSettings$setCcWhiteOverlayAlpha$, (IMP *)_orig_ftt_meth_$NCMaterialSettings$setCcWhiteOverlayAlpha$);
    MSHookMessageEx(_ftt_class_NCMaterialSettings, @selector(setDarkenedWhiteAlpha:), (IMP)_patched_ftt_meth_$NCMaterialSettings$setDarkenedWhiteAlpha$, (IMP *)_orig_ftt_meth_$NCMaterialSettings$setDarkenedWhiteAlpha$);
}
