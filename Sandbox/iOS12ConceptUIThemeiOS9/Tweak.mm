#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$PSSearchController$setSearchBarVisible$animated$)(id, SEL, bool, bool);
static void _patched_ftt_meth_$PSSearchController$setSearchBarVisible$animated$(id self, SEL _cmd, bool arg1, bool arg2) {
    // Search Bar - Show On Open: (Yes=T, No=F)
    arg1 = 1;
    _orig_ftt_meth_$PSSearchController$setSearchBarVisible$animated$(self, _cmd, arg1, arg2);
}

static id (*_orig_ftt_meth_$UISearchBarBackground$_createBackgroundImageForBarStyle$alpha$)(id, SEL, long long, double);
static id _patched_ftt_meth_$UISearchBarBackground$_createBackgroundImageForBarStyle$alpha$(id self, SEL _cmd, long long arg1, double arg2) {
    // Search Bar - BG Alpha: (Arg#2): (Range=0.0-1.0)
    arg2 = 0;
    return _orig_ftt_meth_$UISearchBarBackground$_createBackgroundImageForBarStyle$alpha$(self, _cmd, arg1, arg2);
}

static void (*_orig_ftt_meth_$UITableView$setSeparatorStyle$)(id, SEL, long long);
static void _patched_ftt_meth_$UITableView$setSeparatorStyle$(id self, SEL _cmd, long long arg1) {
    // Separators - Visibility: (Hide=0, Show=1)
    arg1 = 1;
    _orig_ftt_meth_$UITableView$setSeparatorStyle$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$UIGroupTableViewCellBackground$setSelected$)(id, SEL, bool);
static void _patched_ftt_meth_$UIGroupTableViewCellBackground$setSelected$(id self, SEL _cmd, bool arg1) {
    // Cells - Selected BG: Visibility: (Hide=F, Show=T, Stock=D)
    arg1 = 1;
    _orig_ftt_meth_$UIGroupTableViewCellBackground$setSelected$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$UIGroupTableViewCellBackground$setSelectionTintColor$)(id, SEL, id);
static void _patched_ftt_meth_$UIGroupTableViewCellBackground$setSelectionTintColor$(id self, SEL _cmd, id arg1) {
    // Cells - Selected BG: Custom Color (Primary & Secondary): (Stock=D)
    arg1 = [UIColor colorWithRed:76/255.0 green:162/255.0 blue:255/255.0 alpha:255/255.0];
    _orig_ftt_meth_$UIGroupTableViewCellBackground$setSelectionTintColor$(self, _cmd, arg1);
}

static id _patched_ftt_meth_$UITableViewLabel$highlightedTextColor(id self, SEL _cmd) {
    // Cells - Selected Text: Custom Color: (Stock=P)
    return [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:255/255.0];
}

static void (*_orig_ftt_meth_$PSListController$setEdgeToEdgeCells$)(id, SEL, bool);
static void _patched_ftt_meth_$PSListController$setEdgeToEdgeCells$(id self, SEL _cmd, bool arg1) {
    arg1 = 0;
    _orig_ftt_meth_$PSListController$setEdgeToEdgeCells$(self, _cmd, arg1);
}

static bool _patched_ftt_meth_$PSListController$_isRegularWidth(id self, SEL _cmd) {
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_PSSearchController = objc_getClass("PSSearchController");
    MSHookMessageEx(_ftt_class_PSSearchController, @selector(setSearchBarVisible:animated:), (IMP)_patched_ftt_meth_$PSSearchController$setSearchBarVisible$animated$, (IMP *)_orig_ftt_meth_$PSSearchController$setSearchBarVisible$animated$);
    Class _ftt_class_UISearchBarBackground = objc_getClass("UISearchBarBackground");
    MSHookMessageEx(_ftt_class_UISearchBarBackground, @selector(_createBackgroundImageForBarStyle:alpha:), (IMP)_patched_ftt_meth_$UISearchBarBackground$_createBackgroundImageForBarStyle$alpha$, (IMP *)_orig_ftt_meth_$UISearchBarBackground$_createBackgroundImageForBarStyle$alpha$);
    Class _ftt_class_UITableView = objc_getClass("UITableView");
    MSHookMessageEx(_ftt_class_UITableView, @selector(setSeparatorStyle:), (IMP)_patched_ftt_meth_$UITableView$setSeparatorStyle$, (IMP *)_orig_ftt_meth_$UITableView$setSeparatorStyle$);
    Class _ftt_class_UIGroupTableViewCellBackground = objc_getClass("UIGroupTableViewCellBackground");
    MSHookMessageEx(_ftt_class_UIGroupTableViewCellBackground, @selector(setSelected:), (IMP)_patched_ftt_meth_$UIGroupTableViewCellBackground$setSelected$, (IMP *)_orig_ftt_meth_$UIGroupTableViewCellBackground$setSelected$);
    MSHookMessageEx(_ftt_class_UIGroupTableViewCellBackground, @selector(setSelectionTintColor:), (IMP)_patched_ftt_meth_$UIGroupTableViewCellBackground$setSelectionTintColor$, (IMP *)_orig_ftt_meth_$UIGroupTableViewCellBackground$setSelectionTintColor$);
    Class _ftt_class_UITableViewLabel = objc_getClass("UITableViewLabel");
    MSHookMessageEx(_ftt_class_UITableViewLabel, @selector(highlightedTextColor), (IMP)_patched_ftt_meth_$UITableViewLabel$highlightedTextColor, NULL);
    Class _ftt_class_PSListController = objc_getClass("PSListController");
    MSHookMessageEx(_ftt_class_PSListController, @selector(setEdgeToEdgeCells:), (IMP)_patched_ftt_meth_$PSListController$setEdgeToEdgeCells$, (IMP *)_orig_ftt_meth_$PSListController$setEdgeToEdgeCells$);
    MSHookMessageEx(_ftt_class_PSListController, @selector(_isRegularWidth), (IMP)_patched_ftt_meth_$PSListController$_isRegularWidth, NULL);
}
