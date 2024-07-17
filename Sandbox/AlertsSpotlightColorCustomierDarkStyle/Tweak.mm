#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$_UIVisualEffectFilterView$setBackgroundColor$)(id, SEL, id);
static void _patched_ftt_meth_$_UIVisualEffectFilterView$setBackgroundColor$(id self, SEL _cmd, id arg1) {
    // Alerts/Search Bar - BG Color
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:175/255.0];
    _orig_ftt_meth_$_UIVisualEffectFilterView$setBackgroundColor$(self, _cmd, arg1);
}

static id _patched_ftt_meth_$UIAlertControllerVisualStyleAlert$titleLabelColor(id self, SEL _cmd) {
    // Alerts - Title Color
    return [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:255/255.0];
}

static id _patched_ftt_meth_$UIAlertControllerVisualStyleAlert$messageLabelColor(id self, SEL _cmd) {
    // Alerts - Message Text Color
    return [UIColor colorWithRed:187/255.0 green:187/255.0 blue:187/255.0 alpha:255/255.0];
}

static id _patched_ftt_meth_$UIAlertControllerVisualStyleActionSheet$titleLabelColor(id self, SEL _cmd) {
    // Action Sheet - Title Color
    return [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:255/255.0];
}

static id _patched_ftt_meth_$UIAlertControllerVisualStyleActionSheet$messageLabelColor(id self, SEL _cmd) {
    // Action Sheet - Message Text Color
    return [UIColor colorWithRed:187/255.0 green:187/255.0 blue:187/255.0 alpha:255/255.0];
}

static bool _patched_ftt_meth_$_UIAlertControllerInterfaceActionGroupView$_shouldShowSeparatorAboveActionsSequenceView(id self, SEL _cmd) {
    // Alerts/Action Sheets - No Separators (Top)
    return 0;
}

static void (*_orig_ftt_meth_$_UIAlertControllerView$setCancelActionIsDiscrete$)(id, SEL, bool);
static void _patched_ftt_meth_$_UIAlertControllerView$setCancelActionIsDiscrete$(id self, SEL _cmd, bool arg1) {
    // Alerts/action Sheets - Merge Cancel Button: (Yes=F)
    arg1 = 0;
    _orig_ftt_meth_$_UIAlertControllerView$setCancelActionIsDiscrete$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$SPUITextField$updateWithColor$)(id, SEL, id);
static void _patched_ftt_meth_$SPUITextField$updateWithColor$(id self, SEL _cmd, id arg1) {
    // Spotlight - Search Bar Text Color
    arg1 = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:255/255.0];
    _orig_ftt_meth_$SPUITextField$updateWithColor$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$UIButtonContent$setTitleColor$)(id, SEL, id);
static void _patched_ftt_meth_$UIButtonContent$setTitleColor$(id self, SEL _cmd, id arg1) {
    // Spotlight - Button Text Color
    arg1 = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:255/255.0];
    _orig_ftt_meth_$UIButtonContent$setTitleColor$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$_UIGroupTableViewCellBackgroundImageKey$setFillColor$)(id, SEL, id);
static void _patched_ftt_meth_$_UIGroupTableViewCellBackgroundImageKey$setFillColor$(id self, SEL _cmd, id arg1) {
    // Spotlight - Cell BG Color
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:127/255.0];
    _orig_ftt_meth_$_UIGroupTableViewCellBackgroundImageKey$setFillColor$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class__UIVisualEffectFilterView = objc_getClass("_UIVisualEffectFilterView");
    MSHookMessageEx(_ftt_class__UIVisualEffectFilterView, @selector(setBackgroundColor:), (IMP)_patched_ftt_meth_$_UIVisualEffectFilterView$setBackgroundColor$, (IMP *)_orig_ftt_meth_$_UIVisualEffectFilterView$setBackgroundColor$);
    Class _ftt_class_UIAlertControllerVisualStyleAlert = objc_getClass("UIAlertControllerVisualStyleAlert");
    MSHookMessageEx(_ftt_class_UIAlertControllerVisualStyleAlert, @selector(titleLabelColor), (IMP)_patched_ftt_meth_$UIAlertControllerVisualStyleAlert$titleLabelColor, NULL);
    MSHookMessageEx(_ftt_class_UIAlertControllerVisualStyleAlert, @selector(messageLabelColor), (IMP)_patched_ftt_meth_$UIAlertControllerVisualStyleAlert$messageLabelColor, NULL);
    Class _ftt_class_UIAlertControllerVisualStyleActionSheet = objc_getClass("UIAlertControllerVisualStyleActionSheet");
    MSHookMessageEx(_ftt_class_UIAlertControllerVisualStyleActionSheet, @selector(titleLabelColor), (IMP)_patched_ftt_meth_$UIAlertControllerVisualStyleActionSheet$titleLabelColor, NULL);
    MSHookMessageEx(_ftt_class_UIAlertControllerVisualStyleActionSheet, @selector(messageLabelColor), (IMP)_patched_ftt_meth_$UIAlertControllerVisualStyleActionSheet$messageLabelColor, NULL);
    Class _ftt_class__UIAlertControllerInterfaceActionGroupView = objc_getClass("_UIAlertControllerInterfaceActionGroupView");
    MSHookMessageEx(_ftt_class__UIAlertControllerInterfaceActionGroupView, @selector(_shouldShowSeparatorAboveActionsSequenceView), (IMP)_patched_ftt_meth_$_UIAlertControllerInterfaceActionGroupView$_shouldShowSeparatorAboveActionsSequenceView, NULL);
    Class _ftt_class__UIAlertControllerView = objc_getClass("_UIAlertControllerView");
    MSHookMessageEx(_ftt_class__UIAlertControllerView, @selector(setCancelActionIsDiscrete:), (IMP)_patched_ftt_meth_$_UIAlertControllerView$setCancelActionIsDiscrete$, (IMP *)_orig_ftt_meth_$_UIAlertControllerView$setCancelActionIsDiscrete$);
    Class _ftt_class_SPUITextField = objc_getClass("SPUITextField");
    MSHookMessageEx(_ftt_class_SPUITextField, @selector(updateWithColor:), (IMP)_patched_ftt_meth_$SPUITextField$updateWithColor$, (IMP *)_orig_ftt_meth_$SPUITextField$updateWithColor$);
    Class _ftt_class_UIButtonContent = objc_getClass("UIButtonContent");
    MSHookMessageEx(_ftt_class_UIButtonContent, @selector(setTitleColor:), (IMP)_patched_ftt_meth_$UIButtonContent$setTitleColor$, (IMP *)_orig_ftt_meth_$UIButtonContent$setTitleColor$);
    Class _ftt_class__UIGroupTableViewCellBackgroundImageKey = objc_getClass("_UIGroupTableViewCellBackgroundImageKey");
    MSHookMessageEx(_ftt_class__UIGroupTableViewCellBackgroundImageKey, @selector(setFillColor:), (IMP)_patched_ftt_meth_$_UIGroupTableViewCellBackgroundImageKey$setFillColor$, (IMP *)_orig_ftt_meth_$_UIGroupTableViewCellBackgroundImageKey$setFillColor$);
}
