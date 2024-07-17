#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$SBNotificationCenterViewController$blursBackground(id self, SEL _cmd) {
    // Background:  Stock=pass-through, Gray=FALSE
    return 0;
}

static void (*_orig_ftt_meth_$SBUISizeObservingView$setBackgroundColor$)(id, SEL, id);
static void _patched_ftt_meth_$SBUISizeObservingView$setBackgroundColor$(id self, SEL _cmd, id arg1) {
    // Sections Background
    arg1 = [UIColor colorWithRed:98/255.0 green:52/255.0 blue:85/255.0 alpha:255/255.0];
    _orig_ftt_meth_$SBUISizeObservingView$setBackgroundColor$(self, _cmd, arg1);
}

static id (*_orig_ftt_meth_$SBControlColorSettings$initWithTintColor$selectedTintColor$textColor$selectedTextColor$)(id, SEL, id, id, id, id);
static id _patched_ftt_meth_$SBControlColorSettings$initWithTintColor$selectedTintColor$textColor$selectedTextColor$(id self, SEL _cmd, id arg1, id arg2, id arg3, id arg4) {
    // Segment Section:	(Arg#1): Tint Color (Arg#2): Selected Tint Color (Arg#3): Text Color (Arg#4): Selected Text Color
    arg1 = [UIColor colorWithRed:69/255.0 green:43/255.0 blue:54/255.0 alpha:255/255.0];
    arg3 = [UIColor colorWithRed:147/255.0 green:83/255.0 blue:135/255.0 alpha:255/255.0];
    arg2 = [UIColor colorWithRed:255/255.0 green:144/255.0 blue:235/255.0 alpha:255/255.0];
    arg4 = [UIColor colorWithRed:200/255.0 green:192/255.0 blue:195/255.0 alpha:255/255.0];
    return _orig_ftt_meth_$SBControlColorSettings$initWithTintColor$selectedTintColor$textColor$selectedTextColor$(self, _cmd, arg1, arg2, arg3, arg4);
}

static void (*_orig_ftt_meth_$SBNotificationSeparatorView$setBackgroundColor$)(id, SEL, id);
static void _patched_ftt_meth_$SBNotificationSeparatorView$setBackgroundColor$(id self, SEL _cmd, id arg1) {
    // Top & Bottom Separator
    arg1 = [UIColor colorWithRed:255/255.0 green:144/255.0 blue:235/255.0 alpha:255/255.0];
    _orig_ftt_meth_$SBNotificationSeparatorView$setBackgroundColor$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$_UITableViewHeaderFooterContentView$setBackgroundColor$)(id, SEL, id);
static void _patched_ftt_meth_$_UITableViewHeaderFooterContentView$setBackgroundColor$(id self, SEL _cmd, id arg1) {
    // Headers
    arg1 = [UIColor colorWithRed:84/255.0 green:58/255.0 blue:69/255.0 alpha:255/255.0];
    _orig_ftt_meth_$_UITableViewHeaderFooterContentView$setBackgroundColor$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$_UITableViewCellSeparatorView$setBackgroundColor$)(id, SEL, id);
static void _patched_ftt_meth_$_UITableViewCellSeparatorView$setBackgroundColor$(id self, SEL _cmd, id arg1) {
    // Cell Separator
    arg1 = [UIColor colorWithRed:255/255.0 green:144/255.0 blue:235/255.0 alpha:255/255.0];
    _orig_ftt_meth_$_UITableViewCellSeparatorView$setBackgroundColor$(self, _cmd, arg1);
}

static id _patched_ftt_meth_$SBTodayViewController$todayTableFooterView(id self, SEL _cmd) {
    // Hides Weather/Stocks™ Footer:  Show=pass-through
    return NULL;
}

static void (*_orig_ftt_meth_$SBChevronView$setColor$)(id, SEL, id);
static void _patched_ftt_meth_$SBChevronView$setColor$(id self, SEL _cmd, id arg1) {
    // Grabber Color/Visibility:  Set Color, Hide=pass-through or Stock View=DELETE THIS ENTRY  [Note: Applies to ALL grabbers]
    arg1 = [UIColor colorWithRed:134/255.0 green:69/255.0 blue:97/255.0 alpha:255/255.0];
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
    Class _ftt_class_SBTodayViewController = objc_getClass("SBTodayViewController");
    MSHookMessageEx(_ftt_class_SBTodayViewController, @selector(todayTableFooterView), (IMP)_patched_ftt_meth_$SBTodayViewController$todayTableFooterView, NULL);
    Class _ftt_class_SBChevronView = objc_getClass("SBChevronView");
    MSHookMessageEx(_ftt_class_SBChevronView, @selector(setColor:), (IMP)_patched_ftt_meth_$SBChevronView$setColor$, (IMP *)_orig_ftt_meth_$SBChevronView$setColor$);
}
