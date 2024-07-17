#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$UIView$_setBackgroundColor$)(id, SEL, id);
static void _patched_ftt_meth_$UIView$_setBackgroundColor$(id self, SEL _cmd, id arg1) {
    // Background
    arg1 = [UIColor colorWithRed:28/255.0 green:28/255.0 blue:28/255.0 alpha:255/255.0];
    _orig_ftt_meth_$UIView$_setBackgroundColor$(self, _cmd, arg1);
}

static id _patched_ftt_meth_$UIImageView$_effectiveTintColorWithImage$(id self, SEL _cmd, id arg1) {
    // Image Button: (Return Value)
    return [UIColor colorWithRed:146/255.0 green:146/255.0 blue:146/255.0 alpha:255/255.0];
}

static void (*_orig_ftt_meth_$UILabel$_setTextColor$)(id, SEL, id);
static void _patched_ftt_meth_$UILabel$_setTextColor$(id self, SEL _cmd, id arg1) {
    // Text
    arg1 = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:255/255.0];
    _orig_ftt_meth_$UILabel$_setTextColor$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$PXTemperatureCollectionViewCell$setColor$)(id, SEL, id);
static void _patched_ftt_meth_$PXTemperatureCollectionViewCell$setColor$(id self, SEL _cmd, id arg1) {
    // Temperature Circle
    arg1 = [UIColor colorWithRed:4/255.0 green:139/255.0 blue:27/255.0 alpha:255/255.0];
    _orig_ftt_meth_$PXTemperatureCollectionViewCell$setColor$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_UIView = objc_getClass("UIView");
    MSHookMessageEx(_ftt_class_UIView, @selector(_setBackgroundColor:), (IMP)_patched_ftt_meth_$UIView$_setBackgroundColor$, (IMP *)_orig_ftt_meth_$UIView$_setBackgroundColor$);
    Class _ftt_class_UIImageView = objc_getClass("UIImageView");
    MSHookMessageEx(_ftt_class_UIImageView, @selector(_effectiveTintColorWithImage:), (IMP)_patched_ftt_meth_$UIImageView$_effectiveTintColorWithImage$, NULL);
    Class _ftt_class_UILabel = objc_getClass("UILabel");
    MSHookMessageEx(_ftt_class_UILabel, @selector(_setTextColor:), (IMP)_patched_ftt_meth_$UILabel$_setTextColor$, (IMP *)_orig_ftt_meth_$UILabel$_setTextColor$);
    Class _ftt_class_PXTemperatureCollectionViewCell = objc_getClass("PXTemperatureCollectionViewCell");
    MSHookMessageEx(_ftt_class_PXTemperatureCollectionViewCell, @selector(setColor:), (IMP)_patched_ftt_meth_$PXTemperatureCollectionViewCell$setColor$, (IMP *)_orig_ftt_meth_$PXTemperatureCollectionViewCell$setColor$);
}
