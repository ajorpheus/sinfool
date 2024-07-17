#import <UIKit/UIKit.h>

#include <substrate.h>

static id (*_orig_ftt_meth_$UIStatusBarNewUIStyleAttributes$initWithRequest$backgroundColor$foregroundColor$)(id, SEL, id, id, id);
static id _patched_ftt_meth_$UIStatusBarNewUIStyleAttributes$initWithRequest$backgroundColor$foregroundColor$(id self, SEL _cmd, id arg1, id arg2, id arg3) {
    // Status Bar - (Arg#2): Background, (Arg#3): Foreground
    arg3 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:255/255.0];
    return _orig_ftt_meth_$UIStatusBarNewUIStyleAttributes$initWithRequest$backgroundColor$foregroundColor$(self, _cmd, arg1, arg2, arg3);
}

static void (*_orig_ftt_meth_$UINavigationBar$setBarTintColor$)(id, SEL, id);
static void _patched_ftt_meth_$UINavigationBar$setBarTintColor$(id self, SEL _cmd, id arg1) {
    // Nav Bar
    arg1 = [UIColor colorWithRed:240/255.0 green:240/255.0 blue:242/255.0 alpha:255/255.0];
    _orig_ftt_meth_$UINavigationBar$setBarTintColor$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$UINavigationBar$setTintColor$)(id, SEL, id);
static void _patched_ftt_meth_$UINavigationBar$setTintColor$(id self, SEL _cmd, id arg1) {
    // Nav Bar Button (Left)
    arg1 = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:255/255.0];
    _orig_ftt_meth_$UINavigationBar$setTintColor$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$UIButtonContent$setImageColor$)(id, SEL, id);
static void _patched_ftt_meth_$UIButtonContent$setImageColor$(id self, SEL _cmd, id arg1) {
    // Nav Bar Image
    arg1 = [UIColor colorWithRed:35/255.0 green:35/255.0 blue:35/255.0 alpha:255/255.0];
    _orig_ftt_meth_$UIButtonContent$setImageColor$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$beamPatchedSwiftClassNameButtonBar$setTintColor$)(id, SEL, id);
static void _patched_ftt_meth_$beamPatchedSwiftClassNameButtonBar$setTintColor$(id self, SEL _cmd, id arg1) {
    // Tool Bar Text
    arg1 = [UIColor colorWithRed:35/255.0 green:35/255.0 blue:35/255.0 alpha:255/255.0];
    _orig_ftt_meth_$beamPatchedSwiftClassNameButtonBar$setTintColor$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$beamPatchedSwiftClassNameScrollableButtonBar$setTintColor$)(id, SEL, id);
static void _patched_ftt_meth_$beamPatchedSwiftClassNameScrollableButtonBar$setTintColor$(id self, SEL _cmd, id arg1) {
    // Scrollable Tool Bar Text
    arg1 = [UIColor colorWithRed:35/255.0 green:35/255.0 blue:35/255.0 alpha:255/255.0];
    _orig_ftt_meth_$beamPatchedSwiftClassNameScrollableButtonBar$setTintColor$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$_UITableViewHeaderFooterViewLabel$setTextColor$)(id, SEL, id);
static void _patched_ftt_meth_$_UITableViewHeaderFooterViewLabel$setTextColor$(id self, SEL _cmd, id arg1) {
    // Header Label
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:255/255.0];
    _orig_ftt_meth_$_UITableViewHeaderFooterViewLabel$setTextColor$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$UITableViewIndex$setIndexColor$)(id, SEL, id);
static void _patched_ftt_meth_$UITableViewIndex$setIndexColor$(id self, SEL _cmd, id arg1) {
    // Side Bar - Index Text
    arg1 = [UIColor colorWithRed:85/255.0 green:85/255.0 blue:85/255.0 alpha:255/255.0];
    _orig_ftt_meth_$UITableViewIndex$setIndexColor$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$UITabBarButton$_showSelectedIndicator$changeSelection$)(id, SEL, bool, bool);
static void _patched_ftt_meth_$UITabBarButton$_showSelectedIndicator$changeSelection$(id self, SEL _cmd, bool arg1, bool arg2) {
    // Tab Bar - (Arg#1): All Unselected Color = False
    arg2 = 1;
    arg1 = 0;
    _orig_ftt_meth_$UITabBarButton$_showSelectedIndicator$changeSelection$(self, _cmd, arg1, arg2);
}

static bool _patched_ftt_meth_$UIView$_ancestorDefinesTintColor(id self, SEL _cmd) {
    // Text Tabs When Searching Sub Reddit 
    return 0;
}

static void (*_orig_ftt_meth_$UITabBarButton$_setContentTintColor$forState$)(id, SEL, id, unsigned long long);
static void _patched_ftt_meth_$UITabBarButton$_setContentTintColor$forState$(id self, SEL _cmd, id arg1, unsigned long long arg2) {
    // Tab Bar - Unselected
    arg1 = [UIColor colorWithRed:85/255.0 green:85/255.0 blue:85/255.0 alpha:255/255.0];
    _orig_ftt_meth_$UITabBarButton$_setContentTintColor$forState$(self, _cmd, arg1, arg2);
}

static void (*_orig_ftt_meth_$UITableViewCellSelectedBackground$setSelectionTintColor$)(id, SEL, id);
static void _patched_ftt_meth_$UITableViewCellSelectedBackground$setSelectionTintColor$(id self, SEL _cmd, id arg1) {
    // Sub Reddit Cell Selection
    arg1 = [UIColor colorWithRed:220/255.0 green:220/255.0 blue:220/255.0 alpha:255/255.0];
    _orig_ftt_meth_$UITableViewCellSelectedBackground$setSelectionTintColor$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$beamPatchedSwiftClassNameBeamButton$setBackgroundColor$)(id, SEL, id);
static void _patched_ftt_meth_$beamPatchedSwiftClassNameBeamButton$setBackgroundColor$(id self, SEL _cmd, id arg1) {
    // Button
    arg1 = [UIColor colorWithRed:35/255.0 green:35/255.0 blue:35/255.0 alpha:255/255.0];
    _orig_ftt_meth_$beamPatchedSwiftClassNameBeamButton$setBackgroundColor$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$UITextInputTraits$setInsertionPointColor$)(id, SEL, id);
static void _patched_ftt_meth_$UITextInputTraits$setInsertionPointColor$(id self, SEL _cmd, id arg1) {
    // Cursor
    arg1 = [UIColor colorWithRed:85/255.0 green:85/255.0 blue:85/255.0 alpha:255/255.0];
    _orig_ftt_meth_$UITextInputTraits$setInsertionPointColor$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$UILabel$_setTextColorFollowsTintColor$)(id, SEL, bool);
static void _patched_ftt_meth_$UILabel$_setTextColorFollowsTintColor$(id self, SEL _cmd, bool arg1) {
    // UIAlert - TextColorFollowsTintColor
    arg1 = 0;
    _orig_ftt_meth_$UILabel$_setTextColorFollowsTintColor$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$UILabel$setTextColor$)(id, SEL, id);
static void _patched_ftt_meth_$UILabel$setTextColor$(id self, SEL _cmd, id arg1) {
    // Text Color - Overrides Other Labels (Delete This Entry For Different Results)
    arg1 = [UIColor colorWithRed:39/255.0 green:39/255.0 blue:39/255.0 alpha:255/255.0];
    _orig_ftt_meth_$UILabel$setTextColor$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_UIStatusBarNewUIStyleAttributes = objc_getClass("UIStatusBarNewUIStyleAttributes");
    MSHookMessageEx(_ftt_class_UIStatusBarNewUIStyleAttributes, @selector(initWithRequest:backgroundColor:foregroundColor:), (IMP)_patched_ftt_meth_$UIStatusBarNewUIStyleAttributes$initWithRequest$backgroundColor$foregroundColor$, (IMP *)_orig_ftt_meth_$UIStatusBarNewUIStyleAttributes$initWithRequest$backgroundColor$foregroundColor$);
    Class _ftt_class_UINavigationBar = objc_getClass("UINavigationBar");
    MSHookMessageEx(_ftt_class_UINavigationBar, @selector(setBarTintColor:), (IMP)_patched_ftt_meth_$UINavigationBar$setBarTintColor$, (IMP *)_orig_ftt_meth_$UINavigationBar$setBarTintColor$);
    MSHookMessageEx(_ftt_class_UINavigationBar, @selector(setTintColor:), (IMP)_patched_ftt_meth_$UINavigationBar$setTintColor$, (IMP *)_orig_ftt_meth_$UINavigationBar$setTintColor$);
    Class _ftt_class_UIButtonContent = objc_getClass("UIButtonContent");
    MSHookMessageEx(_ftt_class_UIButtonContent, @selector(setImageColor:), (IMP)_patched_ftt_meth_$UIButtonContent$setImageColor$, (IMP *)_orig_ftt_meth_$UIButtonContent$setImageColor$);
    Class _ftt_class_beamPatchedSwiftClassNameButtonBar = objc_getClass("beam.ButtonBar");
    MSHookMessageEx(_ftt_class_beamPatchedSwiftClassNameButtonBar, @selector(setTintColor:), (IMP)_patched_ftt_meth_$beamPatchedSwiftClassNameButtonBar$setTintColor$, (IMP *)_orig_ftt_meth_$beamPatchedSwiftClassNameButtonBar$setTintColor$);
    Class _ftt_class_beamPatchedSwiftClassNameScrollableButtonBar = objc_getClass("beam.ScrollableButtonBar");
    MSHookMessageEx(_ftt_class_beamPatchedSwiftClassNameScrollableButtonBar, @selector(setTintColor:), (IMP)_patched_ftt_meth_$beamPatchedSwiftClassNameScrollableButtonBar$setTintColor$, (IMP *)_orig_ftt_meth_$beamPatchedSwiftClassNameScrollableButtonBar$setTintColor$);
    Class _ftt_class__UITableViewHeaderFooterViewLabel = objc_getClass("_UITableViewHeaderFooterViewLabel");
    MSHookMessageEx(_ftt_class__UITableViewHeaderFooterViewLabel, @selector(setTextColor:), (IMP)_patched_ftt_meth_$_UITableViewHeaderFooterViewLabel$setTextColor$, (IMP *)_orig_ftt_meth_$_UITableViewHeaderFooterViewLabel$setTextColor$);
    Class _ftt_class_UITableViewIndex = objc_getClass("UITableViewIndex");
    MSHookMessageEx(_ftt_class_UITableViewIndex, @selector(setIndexColor:), (IMP)_patched_ftt_meth_$UITableViewIndex$setIndexColor$, (IMP *)_orig_ftt_meth_$UITableViewIndex$setIndexColor$);
    Class _ftt_class_UITabBarButton = objc_getClass("UITabBarButton");
    MSHookMessageEx(_ftt_class_UITabBarButton, @selector(_showSelectedIndicator:changeSelection:), (IMP)_patched_ftt_meth_$UITabBarButton$_showSelectedIndicator$changeSelection$, (IMP *)_orig_ftt_meth_$UITabBarButton$_showSelectedIndicator$changeSelection$);
    Class _ftt_class_UIView = objc_getClass("UIView");
    MSHookMessageEx(_ftt_class_UIView, @selector(_ancestorDefinesTintColor), (IMP)_patched_ftt_meth_$UIView$_ancestorDefinesTintColor, NULL);
    MSHookMessageEx(_ftt_class_UITabBarButton, @selector(_setContentTintColor:forState:), (IMP)_patched_ftt_meth_$UITabBarButton$_setContentTintColor$forState$, (IMP *)_orig_ftt_meth_$UITabBarButton$_setContentTintColor$forState$);
    Class _ftt_class_UITableViewCellSelectedBackground = objc_getClass("UITableViewCellSelectedBackground");
    MSHookMessageEx(_ftt_class_UITableViewCellSelectedBackground, @selector(setSelectionTintColor:), (IMP)_patched_ftt_meth_$UITableViewCellSelectedBackground$setSelectionTintColor$, (IMP *)_orig_ftt_meth_$UITableViewCellSelectedBackground$setSelectionTintColor$);
    Class _ftt_class_beamPatchedSwiftClassNameBeamButton = objc_getClass("beam.BeamButton");
    MSHookMessageEx(_ftt_class_beamPatchedSwiftClassNameBeamButton, @selector(setBackgroundColor:), (IMP)_patched_ftt_meth_$beamPatchedSwiftClassNameBeamButton$setBackgroundColor$, (IMP *)_orig_ftt_meth_$beamPatchedSwiftClassNameBeamButton$setBackgroundColor$);
    Class _ftt_class_UITextInputTraits = objc_getClass("UITextInputTraits");
    MSHookMessageEx(_ftt_class_UITextInputTraits, @selector(setInsertionPointColor:), (IMP)_patched_ftt_meth_$UITextInputTraits$setInsertionPointColor$, (IMP *)_orig_ftt_meth_$UITextInputTraits$setInsertionPointColor$);
    Class _ftt_class_UILabel = objc_getClass("UILabel");
    MSHookMessageEx(_ftt_class_UILabel, @selector(_setTextColorFollowsTintColor:), (IMP)_patched_ftt_meth_$UILabel$_setTextColorFollowsTintColor$, (IMP *)_orig_ftt_meth_$UILabel$_setTextColorFollowsTintColor$);
    MSHookMessageEx(_ftt_class_UILabel, @selector(setTextColor:), (IMP)_patched_ftt_meth_$UILabel$setTextColor$, (IMP *)_orig_ftt_meth_$UILabel$setTextColor$);
}
