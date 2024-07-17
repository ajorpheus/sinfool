#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$GMSNHeaderView$setPrimaryBackgroundColor$)(id, SEL, id);
static void _patched_ftt_meth_$GMSNHeaderView$setPrimaryBackgroundColor$(id self, SEL _cmd, id arg1) {
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0/255.0];
    _orig_ftt_meth_$GMSNHeaderView$setPrimaryBackgroundColor$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$GMSNHeaderView$setStepSeparationColor$)(id, SEL, id);
static void _patched_ftt_meth_$GMSNHeaderView$setStepSeparationColor$(id self, SEL _cmd, id arg1) {
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0/255.0];
    _orig_ftt_meth_$GMSNHeaderView$setStepSeparationColor$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$GMSNHeaderView$setSecondaryBackgroundColor$)(id, SEL, id);
static void _patched_ftt_meth_$GMSNHeaderView$setSecondaryBackgroundColor$(id self, SEL _cmd, id arg1) {
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0/255.0];
    _orig_ftt_meth_$GMSNHeaderView$setSecondaryBackgroundColor$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_GMSNHeaderView = objc_getClass("GMSNHeaderView");
    MSHookMessageEx(_ftt_class_GMSNHeaderView, @selector(setPrimaryBackgroundColor:), (IMP)_patched_ftt_meth_$GMSNHeaderView$setPrimaryBackgroundColor$, (IMP *)_orig_ftt_meth_$GMSNHeaderView$setPrimaryBackgroundColor$);
    MSHookMessageEx(_ftt_class_GMSNHeaderView, @selector(setStepSeparationColor:), (IMP)_patched_ftt_meth_$GMSNHeaderView$setStepSeparationColor$, (IMP *)_orig_ftt_meth_$GMSNHeaderView$setStepSeparationColor$);
    MSHookMessageEx(_ftt_class_GMSNHeaderView, @selector(setSecondaryBackgroundColor:), (IMP)_patched_ftt_meth_$GMSNHeaderView$setSecondaryBackgroundColor$, (IMP *)_orig_ftt_meth_$GMSNHeaderView$setSecondaryBackgroundColor$);
}
