#import <UIKit/UIKit.h>

#include <substrate.h>

static id (*_orig_ftt_meth_$UIStatusBarNewUIForegroundStyleAttributes$initWithHeight$legibilityStyle$tintColor$backgroundColor$)(id, SEL, float, int, id, id);
static id _patched_ftt_meth_$UIStatusBarNewUIForegroundStyleAttributes$initWithHeight$legibilityStyle$tintColor$backgroundColor$(id self, SEL _cmd, float arg1, int arg2, id arg3, id arg4) {
    // Status Bar Text (to disable, set to passthrough)
    arg3 = [UIColor colorWithRed:38/255.0 green:118/255.0 blue:215/255.0 alpha:255/255.0];
    return _orig_ftt_meth_$UIStatusBarNewUIForegroundStyleAttributes$initWithHeight$legibilityStyle$tintColor$backgroundColor$(self, _cmd, arg1, arg2, arg3, arg4);
}

static void (*_orig_ftt_meth_$UITableView$setBackgroundColor$)(id, SEL, id);
static void _patched_ftt_meth_$UITableView$setBackgroundColor$(id self, SEL _cmd, id arg1) {
    // Background
    arg1 = [UIColor colorWithRed:57/255.0 green:109/255.0 blue:167/255.0 alpha:255/255.0];
    _orig_ftt_meth_$UITableView$setBackgroundColor$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$UITableViewCellSelectedBackground$setSelectionTintColor$)(id, SEL, id);
static void _patched_ftt_meth_$UITableViewCellSelectedBackground$setSelectionTintColor$(id self, SEL _cmd, id arg1) {
    // Cell Selected
    arg1 = [UIColor colorWithRed:182/255.0 green:200/255.0 blue:223/255.0 alpha:255/255.0];
    _orig_ftt_meth_$UITableViewCellSelectedBackground$setSelectionTintColor$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$UITableView$setSeparatorColor$)(id, SEL, id);
static void _patched_ftt_meth_$UITableView$setSeparatorColor$(id self, SEL _cmd, id arg1) {
    // Separator Lines
    arg1 = [UIColor colorWithRed:57/255.0 green:109/255.0 blue:167/255.0 alpha:255/255.0];
    _orig_ftt_meth_$UITableView$setSeparatorColor$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_UIStatusBarNewUIForegroundStyleAttributes = objc_getClass("UIStatusBarNewUIForegroundStyleAttributes");
    MSHookMessageEx(_ftt_class_UIStatusBarNewUIForegroundStyleAttributes, @selector(initWithHeight:legibilityStyle:tintColor:backgroundColor:), (IMP)_patched_ftt_meth_$UIStatusBarNewUIForegroundStyleAttributes$initWithHeight$legibilityStyle$tintColor$backgroundColor$, (IMP *)_orig_ftt_meth_$UIStatusBarNewUIForegroundStyleAttributes$initWithHeight$legibilityStyle$tintColor$backgroundColor$);
    Class _ftt_class_UITableView = objc_getClass("UITableView");
    MSHookMessageEx(_ftt_class_UITableView, @selector(setBackgroundColor:), (IMP)_patched_ftt_meth_$UITableView$setBackgroundColor$, (IMP *)_orig_ftt_meth_$UITableView$setBackgroundColor$);
    Class _ftt_class_UITableViewCellSelectedBackground = objc_getClass("UITableViewCellSelectedBackground");
    MSHookMessageEx(_ftt_class_UITableViewCellSelectedBackground, @selector(setSelectionTintColor:), (IMP)_patched_ftt_meth_$UITableViewCellSelectedBackground$setSelectionTintColor$, (IMP *)_orig_ftt_meth_$UITableViewCellSelectedBackground$setSelectionTintColor$);
    MSHookMessageEx(_ftt_class_UITableView, @selector(setSeparatorColor:), (IMP)_patched_ftt_meth_$UITableView$setSeparatorColor$, (IMP *)_orig_ftt_meth_$UITableView$setSeparatorColor$);
}
