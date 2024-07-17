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

static double _patched_ftt_meth_$PSUIPrefsListController$tableView$heightForHeaderInSection$(id self, SEL _cmd, id arg1, long long arg2) {
    // Top Header - Hide/Combine Sections: (Return Value): (Yes=0, No=P)
    return 0;
}

static double _patched_ftt_meth_$UITableView$sectionHeaderHeight(id self, SEL _cmd) {
    // Section Gaps (Top Space) - Hide/Combine Sections: (Yes=0, No=P)
    return 0;
}

static double _patched_ftt_meth_$UITableView$sectionFooterHeight(id self, SEL _cmd) {
    // Section Gaps (Bottom Space) - Hide/Combine Sections: (Yes=0, No=P)
    return 0;
}

static void (*_orig_ftt_meth_$UIGroupTableViewCellBackground$setSelectionTintColor$)(id, SEL, id);
static void _patched_ftt_meth_$UIGroupTableViewCellBackground$setSelectionTintColor$(id self, SEL _cmd, id arg1) {
    // Cells - Selected BG: Color
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:38/255.0];
    _orig_ftt_meth_$UIGroupTableViewCellBackground$setSelectionTintColor$(self, _cmd, arg1);
}

static id _patched_ftt_meth_$UITableViewLabel$highlightedTextColor(id self, SEL _cmd) {
    // Cells - Selected Text: Color
    return [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:255/255.0];
}

static int _patched_ftt_meth_$_UIGroupTableViewCellBackgroundImageKey$sectionLocation(id self, SEL _cmd) {
    // Cells - Corners Shape: (Round=0, Square=1, Round Top=2, Round Bottom=3, Default/Round Top & Bottom=P)
    return 0;
}

static void (*_orig_ftt_meth_$_UIGroupTableViewCellBackgroundImageKey$setSectionBorderWidth$)(id, SEL, double);
static void _patched_ftt_meth_$_UIGroupTableViewCellBackgroundImageKey$setSectionBorderWidth$(id self, SEL _cmd, double arg1) {
    // Cells - Border Width: (Higher # = Smaller Size) (Best Range=0.0-10.0)
    arg1 = 4;
    _orig_ftt_meth_$_UIGroupTableViewCellBackgroundImageKey$setSectionBorderWidth$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$UIDevice$setOrientation$animated$)(id, SEL, long long, bool);
static void _patched_ftt_meth_$UIDevice$setOrientation$animated$(id self, SEL _cmd, long long arg1, bool arg2) {
    // Disable Rotation Animation: (Yes=F, No=T)
    arg2 = 0;
    _orig_ftt_meth_$UIDevice$setOrientation$animated$(self, _cmd, arg1, arg2);
}

static void (*_orig_ftt_meth_$UITableView$setSeparatorStyle$)(id, SEL, long long);
static void _patched_ftt_meth_$UITableView$setSeparatorStyle$(id self, SEL _cmd, long long arg1) {
    arg1 = 0;
    _orig_ftt_meth_$UITableView$setSeparatorStyle$(self, _cmd, arg1);
}

static bool _patched_ftt_meth_$PSListController$_isRegularWidth(id self, SEL _cmd) {
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_PSSearchController = objc_getClass("PSSearchController");
    MSHookMessageEx(_ftt_class_PSSearchController, @selector(setSearchBarVisible:animated:), (IMP)_patched_ftt_meth_$PSSearchController$setSearchBarVisible$animated$, (IMP *)_orig_ftt_meth_$PSSearchController$setSearchBarVisible$animated$);
    Class _ftt_class_UISearchBarBackground = objc_getClass("UISearchBarBackground");
    MSHookMessageEx(_ftt_class_UISearchBarBackground, @selector(_createBackgroundImageForBarStyle:alpha:), (IMP)_patched_ftt_meth_$UISearchBarBackground$_createBackgroundImageForBarStyle$alpha$, (IMP *)_orig_ftt_meth_$UISearchBarBackground$_createBackgroundImageForBarStyle$alpha$);
    Class _ftt_class_PSUIPrefsListController = objc_getClass("PSUIPrefsListController");
    MSHookMessageEx(_ftt_class_PSUIPrefsListController, @selector(tableView:heightForHeaderInSection:), (IMP)_patched_ftt_meth_$PSUIPrefsListController$tableView$heightForHeaderInSection$, NULL);
    Class _ftt_class_UITableView = objc_getClass("UITableView");
    MSHookMessageEx(_ftt_class_UITableView, @selector(sectionHeaderHeight), (IMP)_patched_ftt_meth_$UITableView$sectionHeaderHeight, NULL);
    MSHookMessageEx(_ftt_class_UITableView, @selector(sectionFooterHeight), (IMP)_patched_ftt_meth_$UITableView$sectionFooterHeight, NULL);
    Class _ftt_class_UIGroupTableViewCellBackground = objc_getClass("UIGroupTableViewCellBackground");
    MSHookMessageEx(_ftt_class_UIGroupTableViewCellBackground, @selector(setSelectionTintColor:), (IMP)_patched_ftt_meth_$UIGroupTableViewCellBackground$setSelectionTintColor$, (IMP *)_orig_ftt_meth_$UIGroupTableViewCellBackground$setSelectionTintColor$);
    Class _ftt_class_UITableViewLabel = objc_getClass("UITableViewLabel");
    MSHookMessageEx(_ftt_class_UITableViewLabel, @selector(highlightedTextColor), (IMP)_patched_ftt_meth_$UITableViewLabel$highlightedTextColor, NULL);
    Class _ftt_class__UIGroupTableViewCellBackgroundImageKey = objc_getClass("_UIGroupTableViewCellBackgroundImageKey");
    MSHookMessageEx(_ftt_class__UIGroupTableViewCellBackgroundImageKey, @selector(sectionLocation), (IMP)_patched_ftt_meth_$_UIGroupTableViewCellBackgroundImageKey$sectionLocation, NULL);
    MSHookMessageEx(_ftt_class__UIGroupTableViewCellBackgroundImageKey, @selector(setSectionBorderWidth:), (IMP)_patched_ftt_meth_$_UIGroupTableViewCellBackgroundImageKey$setSectionBorderWidth$, (IMP *)_orig_ftt_meth_$_UIGroupTableViewCellBackgroundImageKey$setSectionBorderWidth$);
    Class _ftt_class_UIDevice = objc_getClass("UIDevice");
    MSHookMessageEx(_ftt_class_UIDevice, @selector(setOrientation:animated:), (IMP)_patched_ftt_meth_$UIDevice$setOrientation$animated$, (IMP *)_orig_ftt_meth_$UIDevice$setOrientation$animated$);
    MSHookMessageEx(_ftt_class_UITableView, @selector(setSeparatorStyle:), (IMP)_patched_ftt_meth_$UITableView$setSeparatorStyle$, (IMP *)_orig_ftt_meth_$UITableView$setSeparatorStyle$);
    Class _ftt_class_PSListController = objc_getClass("PSListController");
    MSHookMessageEx(_ftt_class_PSListController, @selector(_isRegularWidth), (IMP)_patched_ftt_meth_$PSListController$_isRegularWidth, NULL);
}
