#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$SBNotificationCenterViewController$blursBackground(id self, SEL _cmd) {
    // Background: Blur=TRUE, Gray=FALSE
    return 0;
}

static void (*_orig_ftt_meth_$SBUISizeObservingView$setBackgroundColor$)(id, SEL, id);
static void _patched_ftt_meth_$SBUISizeObservingView$setBackgroundColor$(id self, SEL _cmd, id arg1) {
    // Sections Background
    arg1 = [UIColor colorWithRed:18/255.0 green:112/255.0 blue:112/255.0 alpha:255/255.0];
    _orig_ftt_meth_$SBUISizeObservingView$setBackgroundColor$(self, _cmd, arg1);
}

static id (*_orig_ftt_meth_$SBControlColorSettings$initWithTintColor$selectedTintColor$textColor$selectedTextColor$)(id, SEL, id, id, id, id);
static id _patched_ftt_meth_$SBControlColorSettings$initWithTintColor$selectedTintColor$textColor$selectedTextColor$(id self, SEL _cmd, id arg1, id arg2, id arg3, id arg4) {
    // (Arg#1): Tab (Arg#2): Selected Tab (Arg#3): Text (Arg#4): Selected Text
    arg1 = [UIColor colorWithRed:22/255.0 green:140/255.0 blue:140/255.0 alpha:255/255.0];
    arg2 = [UIColor colorWithRed:35/255.0 green:218/255.0 blue:218/255.0 alpha:255/255.0];
    arg3 = [UIColor colorWithRed:35/255.0 green:218/255.0 blue:218/255.0 alpha:255/255.0];
    arg4 = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:255/255.0];
    return _orig_ftt_meth_$SBControlColorSettings$initWithTintColor$selectedTintColor$textColor$selectedTextColor$(self, _cmd, arg1, arg2, arg3, arg4);
}

static void (*_orig_ftt_meth_$SBNotificationSeparatorView$setBackgroundColor$)(id, SEL, id);
static void _patched_ftt_meth_$SBNotificationSeparatorView$setBackgroundColor$(id self, SEL _cmd, id arg1) {
    // Top & Bottom Separators
    arg1 = [UIColor colorWithRed:22/255.0 green:140/255.0 blue:140/255.0 alpha:255/255.0];
    _orig_ftt_meth_$SBNotificationSeparatorView$setBackgroundColor$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$_UITableViewHeaderFooterContentView$setBackgroundColor$)(id, SEL, id);
static void _patched_ftt_meth_$_UITableViewHeaderFooterContentView$setBackgroundColor$(id self, SEL _cmd, id arg1) {
    // Headers
    arg1 = [UIColor colorWithRed:18/255.0 green:112/255.0 blue:112/255.0 alpha:255/255.0];
    _orig_ftt_meth_$_UITableViewHeaderFooterContentView$setBackgroundColor$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$_UITableViewCellSeparatorView$setBackgroundColor$)(id, SEL, id);
static void _patched_ftt_meth_$_UITableViewCellSeparatorView$setBackgroundColor$(id self, SEL _cmd, id arg1) {
    // Cell Separators
    arg1 = [UIColor colorWithRed:22/255.0 green:140/255.0 blue:140/255.0 alpha:255/255.0];
    _orig_ftt_meth_$_UITableViewCellSeparatorView$setBackgroundColor$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$SBChevronView$setColor$)(id, SEL, id);
static void _patched_ftt_meth_$SBChevronView$setColor$(id self, SEL _cmd, id arg1) {
    // Grabber
    arg1 = [UIColor colorWithRed:22/255.0 green:140/255.0 blue:140/255.0 alpha:255/255.0];
    _orig_ftt_meth_$SBChevronView$setColor$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBNotificationCenterViewController = objc_getClass("SBNotificationCenterViewController");
    MSHookMessageEx(_ftt_class_SBNotificationCenterViewController, @selector(blursBackground), (IMP)_patched_ftt_meth_$SBNotificationCenterViewController$blursBackground, NULL);
    Class _ftt_class_SBUISizeObservingView = objc_getClass("SBUISizeObservingView");
    MSHookMessageEx(_ftt_class_SBUISizeObservingView, @selector(setBackgroundColor:), (IMP)_patched_ftt_meth_$SBUISizeObservingView$setBackgroundColor$, (IMP *)_orig_ftt_meth_$SBUISizeObservingView$setBackgroundColor$);
    Class _ftt_class_SBControlColorSettings = objc_getClass("SBControlColorSettings");
    MSHookMessageEx(_ftt_class_SBControlColorSettings, @selector(initWithTintColor:selectedTintColor:textColor:selectedTextColor:), (IMP)_patched_ftt_meth_$SBControlColorSettings$initWithTintColor$selectedTintColor$textColor$selectedTextColor$, (IMP *)_orig_ftt_meth_$SBControlColorSettings$initWithTintColor$selectedTintColor$textColor$selectedTextColor$);
    Class _ftt_class_SBNotificationSeparatorView = objc_getClass("SBNotificationSeparatorView");
    MSHookMessageEx(_ftt_class_SBNotificationSeparatorView, @selector(setBackgroundColor:), (IMP)_patched_ftt_meth_$SBNotificationSeparatorView$setBackgroundColor$, (IMP *)_orig_ftt_meth_$SBNotificationSeparatorView$setBackgroundColor$);
    Class _ftt_class__UITableViewHeaderFooterContentView = objc_getClass("_UITableViewHeaderFooterContentView");
    MSHookMessageEx(_ftt_class__UITableViewHeaderFooterContentView, @selector(setBackgroundColor:), (IMP)_patched_ftt_meth_$_UITableViewHeaderFooterContentView$setBackgroundColor$, (IMP *)_orig_ftt_meth_$_UITableViewHeaderFooterContentView$setBackgroundColor$);
    Class _ftt_class__UITableViewCellSeparatorView = objc_getClass("_UITableViewCellSeparatorView");
    MSHookMessageEx(_ftt_class__UITableViewCellSeparatorView, @selector(setBackgroundColor:), (IMP)_patched_ftt_meth_$_UITableViewCellSeparatorView$setBackgroundColor$, (IMP *)_orig_ftt_meth_$_UITableViewCellSeparatorView$setBackgroundColor$);
    Class _ftt_class_SBChevronView = objc_getClass("SBChevronView");
    MSHookMessageEx(_ftt_class_SBChevronView, @selector(setColor:), (IMP)_patched_ftt_meth_$SBChevronView$setColor$, (IMP *)_orig_ftt_meth_$SBChevronView$setColor$);
}
