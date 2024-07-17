#import <UIKit/UIKit.h>

#include <substrate.h>

static id (*_orig_ftt_meth_$UIStatusBarNewUIForegroundStyleAttributes$initWithHeight$legibilityStyle$tintColor$backgroundColor$)(id, SEL, float, int, id, id);
static id _patched_ftt_meth_$UIStatusBarNewUIForegroundStyleAttributes$initWithHeight$legibilityStyle$tintColor$backgroundColor$(id self, SEL _cmd, float arg1, int arg2, id arg3, id arg4) {
    // Status Bar Text COLOR  (pass-through=No Status Bar Text)
    arg3 = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:255/255.0];
    return _orig_ftt_meth_$UIStatusBarNewUIForegroundStyleAttributes$initWithHeight$legibilityStyle$tintColor$backgroundColor$(self, _cmd, arg1, arg2, arg3, arg4);
}

static void (*_orig_ftt_meth_$UINavigationBar$_setBarStyle$)(id, SEL, int);
static void _patched_ftt_meth_$UINavigationBar$_setBarStyle$(id self, SEL _cmd, int arg1) {
    // Navigation Bar Style  (-1=Black, 0=Grey, 1=Blur)
    arg1 = -1;
    _orig_ftt_meth_$UINavigationBar$_setBarStyle$(self, _cmd, arg1);
}

static BOOL _patched_ftt_meth_$UITableViewCell$_backgroundColorSet(id self, SEL _cmd) {
    // -
    return 1;
}

static void (*_orig_ftt_meth_$UITableView$setBackgroundColor$)(id, SEL, id);
static void _patched_ftt_meth_$UITableView$setBackgroundColor$(id self, SEL _cmd, id arg1) {
    // Background COLOR
    arg1 = [UIColor colorWithRed:21/255.0 green:21/255.0 blue:21/255.0 alpha:255/255.0];
    _orig_ftt_meth_$UITableView$setBackgroundColor$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$UITableViewCellSelectedBackground$setSelectionTintColor$)(id, SEL, id);
static void _patched_ftt_meth_$UITableViewCellSelectedBackground$setSelectionTintColor$(id self, SEL _cmd, id arg1) {
    // Cell Selected COLOR
    arg1 = [UIColor colorWithRed:73/255.0 green:73/255.0 blue:73/255.0 alpha:255/255.0];
    _orig_ftt_meth_$UITableViewCellSelectedBackground$setSelectionTintColor$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$UITableView$setSeparatorColor$)(id, SEL, id);
static void _patched_ftt_meth_$UITableView$setSeparatorColor$(id self, SEL _cmd, id arg1) {
    // Separator COLOR  (pass-through=No Separators)
    arg1 = [UIColor colorWithRed:44/255.0 green:44/255.0 blue:44/255.0 alpha:255/255.0];
    _orig_ftt_meth_$UITableView$setSeparatorColor$(self, _cmd, arg1);
}

static BOOL _patched_ftt_meth_$UILabel$isEnabled(id self, SEL _cmd) {
    // -
    return 0;
}

static int _patched_ftt_meth_$UITextInputTraits$keyboardAppearance(id self, SEL _cmd) {
    // Keyboard  (0=Standard, 1=Dark)
    return 1;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_UIStatusBarNewUIForegroundStyleAttributes = objc_getClass("UIStatusBarNewUIForegroundStyleAttributes");
    MSHookMessageEx(_ftt_class_UIStatusBarNewUIForegroundStyleAttributes, @selector(initWithHeight:legibilityStyle:tintColor:backgroundColor:), (IMP)_patched_ftt_meth_$UIStatusBarNewUIForegroundStyleAttributes$initWithHeight$legibilityStyle$tintColor$backgroundColor$, (IMP *)_orig_ftt_meth_$UIStatusBarNewUIForegroundStyleAttributes$initWithHeight$legibilityStyle$tintColor$backgroundColor$);
    Class _ftt_class_UINavigationBar = objc_getClass("UINavigationBar");
    MSHookMessageEx(_ftt_class_UINavigationBar, @selector(_setBarStyle:), (IMP)_patched_ftt_meth_$UINavigationBar$_setBarStyle$, (IMP *)_orig_ftt_meth_$UINavigationBar$_setBarStyle$);
    Class _ftt_class_UITableViewCell = objc_getClass("UITableViewCell");
    MSHookMessageEx(_ftt_class_UITableViewCell, @selector(_backgroundColorSet), (IMP)_patched_ftt_meth_$UITableViewCell$_backgroundColorSet, NULL);
    Class _ftt_class_UITableView = objc_getClass("UITableView");
    MSHookMessageEx(_ftt_class_UITableView, @selector(setBackgroundColor:), (IMP)_patched_ftt_meth_$UITableView$setBackgroundColor$, (IMP *)_orig_ftt_meth_$UITableView$setBackgroundColor$);
    Class _ftt_class_UITableViewCellSelectedBackground = objc_getClass("UITableViewCellSelectedBackground");
    MSHookMessageEx(_ftt_class_UITableViewCellSelectedBackground, @selector(setSelectionTintColor:), (IMP)_patched_ftt_meth_$UITableViewCellSelectedBackground$setSelectionTintColor$, (IMP *)_orig_ftt_meth_$UITableViewCellSelectedBackground$setSelectionTintColor$);
    MSHookMessageEx(_ftt_class_UITableView, @selector(setSeparatorColor:), (IMP)_patched_ftt_meth_$UITableView$setSeparatorColor$, (IMP *)_orig_ftt_meth_$UITableView$setSeparatorColor$);
    Class _ftt_class_UILabel = objc_getClass("UILabel");
    MSHookMessageEx(_ftt_class_UILabel, @selector(isEnabled), (IMP)_patched_ftt_meth_$UILabel$isEnabled, NULL);
    Class _ftt_class_UITextInputTraits = objc_getClass("UITextInputTraits");
    MSHookMessageEx(_ftt_class_UITextInputTraits, @selector(keyboardAppearance), (IMP)_patched_ftt_meth_$UITextInputTraits$keyboardAppearance, NULL);
}
