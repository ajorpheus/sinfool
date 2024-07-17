#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$GOODimmingBackgroundView$setBackgroundColor$)(id, SEL, id);
static void _patched_ftt_meth_$GOODimmingBackgroundView$setBackgroundColor$(id self, SEL _cmd, id arg1) {
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0/255.0];
    _orig_ftt_meth_$GOODimmingBackgroundView$setBackgroundColor$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$YTDialogContainerScrollView$setBackgroundColor$)(id, SEL, id);
static void _patched_ftt_meth_$YTDialogContainerScrollView$setBackgroundColor$(id self, SEL _cmd, id arg1) {
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0/255.0];
    _orig_ftt_meth_$YTDialogContainerScrollView$setBackgroundColor$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$GOODialogView$setBackgroundColor$)(id, SEL, id);
static void _patched_ftt_meth_$GOODialogView$setBackgroundColor$(id self, SEL _cmd, id arg1) {
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0/255.0];
    _orig_ftt_meth_$GOODialogView$setBackgroundColor$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$GOODialogActionButton$setBackgroundColor$)(id, SEL, id);
static void _patched_ftt_meth_$GOODialogActionButton$setBackgroundColor$(id self, SEL _cmd, id arg1) {
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0/255.0];
    _orig_ftt_meth_$GOODialogActionButton$setBackgroundColor$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$YTTopAlignedView$setBackgroundColor$)(id, SEL, id);
static void _patched_ftt_meth_$YTTopAlignedView$setBackgroundColor$(id self, SEL _cmd, id arg1) {
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0/255.0];
    _orig_ftt_meth_$YTTopAlignedView$setBackgroundColor$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$GOOPopoverView$setBackgroundColor$)(id, SEL, id);
static void _patched_ftt_meth_$GOOPopoverView$setBackgroundColor$(id self, SEL _cmd, id arg1) {
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0/255.0];
    _orig_ftt_meth_$GOOPopoverView$setBackgroundColor$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_GOODimmingBackgroundView = objc_getClass("GOODimmingBackgroundView");
    MSHookMessageEx(_ftt_class_GOODimmingBackgroundView, @selector(setBackgroundColor:), (IMP)_patched_ftt_meth_$GOODimmingBackgroundView$setBackgroundColor$, (IMP *)_orig_ftt_meth_$GOODimmingBackgroundView$setBackgroundColor$);
    Class _ftt_class_YTDialogContainerScrollView = objc_getClass("YTDialogContainerScrollView");
    MSHookMessageEx(_ftt_class_YTDialogContainerScrollView, @selector(setBackgroundColor:), (IMP)_patched_ftt_meth_$YTDialogContainerScrollView$setBackgroundColor$, (IMP *)_orig_ftt_meth_$YTDialogContainerScrollView$setBackgroundColor$);
    Class _ftt_class_GOODialogView = objc_getClass("GOODialogView");
    MSHookMessageEx(_ftt_class_GOODialogView, @selector(setBackgroundColor:), (IMP)_patched_ftt_meth_$GOODialogView$setBackgroundColor$, (IMP *)_orig_ftt_meth_$GOODialogView$setBackgroundColor$);
    Class _ftt_class_GOODialogActionButton = objc_getClass("GOODialogActionButton");
    MSHookMessageEx(_ftt_class_GOODialogActionButton, @selector(setBackgroundColor:), (IMP)_patched_ftt_meth_$GOODialogActionButton$setBackgroundColor$, (IMP *)_orig_ftt_meth_$GOODialogActionButton$setBackgroundColor$);
    Class _ftt_class_YTTopAlignedView = objc_getClass("YTTopAlignedView");
    MSHookMessageEx(_ftt_class_YTTopAlignedView, @selector(setBackgroundColor:), (IMP)_patched_ftt_meth_$YTTopAlignedView$setBackgroundColor$, (IMP *)_orig_ftt_meth_$YTTopAlignedView$setBackgroundColor$);
    Class _ftt_class_GOOPopoverView = objc_getClass("GOOPopoverView");
    MSHookMessageEx(_ftt_class_GOOPopoverView, @selector(setBackgroundColor:), (IMP)_patched_ftt_meth_$GOOPopoverView$setBackgroundColor$, (IMP *)_orig_ftt_meth_$GOOPopoverView$setBackgroundColor$);
}
