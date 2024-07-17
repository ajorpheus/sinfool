#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$UITableView$setBackgroundColor$)(id, SEL, id);
static void _patched_ftt_meth_$UITableView$setBackgroundColor$(id self, SEL _cmd, id arg1) {
    // Set Color... (Table View Background)
    arg1 = [UIColor colorWithRed:200/255.0 green:200/255.0 blue:200/255.0 alpha:255/255.0];
    _orig_ftt_meth_$UITableView$setBackgroundColor$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$_UIGroupTableViewCellBackgroundImageKey$setBackgroundColor$)(id, SEL, id);
static void _patched_ftt_meth_$_UIGroupTableViewCellBackgroundImageKey$setBackgroundColor$(id self, SEL _cmd, id arg1) {
    // Set Color.... (Grouped Cells Background)
    arg1 = [UIColor colorWithRed:200/255.0 green:200/255.0 blue:200/255.0 alpha:255/255.0];
    _orig_ftt_meth_$_UIGroupTableViewCellBackgroundImageKey$setBackgroundColor$(self, _cmd, arg1);
}

static id (*_orig_ftt_meth_$UISearchBarBackground$_createBackgroundImageForBarStyle$alpha$)(id, SEL, int, float);
static id _patched_ftt_meth_$UISearchBarBackground$_createBackgroundImageForBarStyle$alpha$(id self, SEL _cmd, int arg1, float arg2) {
    // Search Bar Background Alpha: {(Arg#2): Range: 0.0-1.0}
    arg2 = 0;
    return _orig_ftt_meth_$UISearchBarBackground$_createBackgroundImageForBarStyle$alpha$(self, _cmd, arg1, arg2);
}

static bool _patched_ftt_meth_$UITableView$_shouldShowHeadersAndFooters(id self, SEL _cmd) {
    // Show Top Header
    return 0;
}

static double _patched_ftt_meth_$UITableView$_defaultSectionHeaderHeight(id self, SEL _cmd) {
    // Show Section Headers: {NO=0, YES=pass-through}
    return 0;
}

static double _patched_ftt_meth_$UITableView$_defaultSectionFooterHeight(id self, SEL _cmd) {
    // Show Section Footers: {NO=0, YES=pass-through}
    return 0;
}

static void (*_orig_ftt_meth_$_UIGroupTableViewCellBackgroundImageKey$setSectionBorderWidth$)(id, SEL, double);
static void _patched_ftt_meth_$_UIGroupTableViewCellBackgroundImageKey$setSectionBorderWidth$(id self, SEL _cmd, double arg1) {
    // Round Cell Size: {Best Range: 0.0-10.0 (Higher # = Smaller Size)}
    arg1 = 4.75;
    _orig_ftt_meth_$_UIGroupTableViewCellBackgroundImageKey$setSectionBorderWidth$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$_UIGroupTableViewCellBackgroundImageKey$setSectionLocation$)(id, SEL, int);
static void _patched_ftt_meth_$_UIGroupTableViewCellBackgroundImageKey$setSectionLocation$(id self, SEL _cmd, int arg1) {
    arg1 = 0;
    _orig_ftt_meth_$_UIGroupTableViewCellBackgroundImageKey$setSectionLocation$(self, _cmd, arg1);
}

static bool _patched_ftt_meth_$UITableViewCell$_insetsBackground(id self, SEL _cmd) {
    return 1;
}

static void (*_orig_ftt_meth_$UITableViewCell$_setOpaque$forSubview$)(id, SEL, bool, id);
static void _patched_ftt_meth_$UITableViewCell$_setOpaque$forSubview$(id self, SEL _cmd, bool arg1, id arg2) {
    arg1 = 0;
    _orig_ftt_meth_$UITableViewCell$_setOpaque$forSubview$(self, _cmd, arg1, arg2);
}

static id _patched_ftt_meth_$UIView$backgroundColor(id self, SEL _cmd) {
    return NULL;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_UITableView = objc_getClass("UITableView");
    MSHookMessageEx(_ftt_class_UITableView, @selector(setBackgroundColor:), (IMP)_patched_ftt_meth_$UITableView$setBackgroundColor$, (IMP *)_orig_ftt_meth_$UITableView$setBackgroundColor$);
    Class _ftt_class__UIGroupTableViewCellBackgroundImageKey = objc_getClass("_UIGroupTableViewCellBackgroundImageKey");
    MSHookMessageEx(_ftt_class__UIGroupTableViewCellBackgroundImageKey, @selector(setBackgroundColor:), (IMP)_patched_ftt_meth_$_UIGroupTableViewCellBackgroundImageKey$setBackgroundColor$, (IMP *)_orig_ftt_meth_$_UIGroupTableViewCellBackgroundImageKey$setBackgroundColor$);
    Class _ftt_class_UISearchBarBackground = objc_getClass("UISearchBarBackground");
    MSHookMessageEx(_ftt_class_UISearchBarBackground, @selector(_createBackgroundImageForBarStyle:alpha:), (IMP)_patched_ftt_meth_$UISearchBarBackground$_createBackgroundImageForBarStyle$alpha$, (IMP *)_orig_ftt_meth_$UISearchBarBackground$_createBackgroundImageForBarStyle$alpha$);
    MSHookMessageEx(_ftt_class_UITableView, @selector(_shouldShowHeadersAndFooters), (IMP)_patched_ftt_meth_$UITableView$_shouldShowHeadersAndFooters, NULL);
    MSHookMessageEx(_ftt_class_UITableView, @selector(_defaultSectionHeaderHeight), (IMP)_patched_ftt_meth_$UITableView$_defaultSectionHeaderHeight, NULL);
    MSHookMessageEx(_ftt_class_UITableView, @selector(_defaultSectionFooterHeight), (IMP)_patched_ftt_meth_$UITableView$_defaultSectionFooterHeight, NULL);
    MSHookMessageEx(_ftt_class__UIGroupTableViewCellBackgroundImageKey, @selector(setSectionBorderWidth:), (IMP)_patched_ftt_meth_$_UIGroupTableViewCellBackgroundImageKey$setSectionBorderWidth$, (IMP *)_orig_ftt_meth_$_UIGroupTableViewCellBackgroundImageKey$setSectionBorderWidth$);
    MSHookMessageEx(_ftt_class__UIGroupTableViewCellBackgroundImageKey, @selector(setSectionLocation:), (IMP)_patched_ftt_meth_$_UIGroupTableViewCellBackgroundImageKey$setSectionLocation$, (IMP *)_orig_ftt_meth_$_UIGroupTableViewCellBackgroundImageKey$setSectionLocation$);
    Class _ftt_class_UITableViewCell = objc_getClass("UITableViewCell");
    MSHookMessageEx(_ftt_class_UITableViewCell, @selector(_insetsBackground), (IMP)_patched_ftt_meth_$UITableViewCell$_insetsBackground, NULL);
    MSHookMessageEx(_ftt_class_UITableViewCell, @selector(_setOpaque:forSubview:), (IMP)_patched_ftt_meth_$UITableViewCell$_setOpaque$forSubview$, (IMP *)_orig_ftt_meth_$UITableViewCell$_setOpaque$forSubview$);
    Class _ftt_class_UIView = objc_getClass("UIView");
    MSHookMessageEx(_ftt_class_UIView, @selector(backgroundColor), (IMP)_patched_ftt_meth_$UIView$backgroundColor, NULL);
}
