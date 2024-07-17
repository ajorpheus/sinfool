#import <UIKit/UIKit.h>

#include <substrate.h>

static id (*_orig_ftt_meth_$UIStatusBarNewUIStyleAttributes$initWithRequest$backgroundColor$foregroundColor$hasBusyBackground$)(id, SEL, id, id, id, bool);
static id _patched_ftt_meth_$UIStatusBarNewUIStyleAttributes$initWithRequest$backgroundColor$foregroundColor$hasBusyBackground$(id self, SEL _cmd, id arg1, id arg2, id arg3, bool arg4) {
    // Status Bar Background: (Arg#2), Status Bar Foreground: (Arg#3)
    arg3 = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:255/255.0];
    arg2 = [UIColor colorWithRed:35/255.0 green:35/255.0 blue:35/255.0 alpha:255/255.0];
    return _orig_ftt_meth_$UIStatusBarNewUIStyleAttributes$initWithRequest$backgroundColor$foregroundColor$hasBusyBackground$(self, _cmd, arg1, arg2, arg3, arg4);
}

static void (*_orig_ftt_meth_$YTAppView$setStatusBarBackgroundColor$)(id, SEL, id);
static void _patched_ftt_meth_$YTAppView$setStatusBarBackgroundColor$(id self, SEL _cmd, id arg1) {
    // Status Bar Background #2: (in switcher)
    arg1 = [UIColor colorWithRed:35/255.0 green:35/255.0 blue:35/255.0 alpha:255/255.0];
    _orig_ftt_meth_$YTAppView$setStatusBarBackgroundColor$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$_UINavigationBarBackground$setBackgroundColor$)(id, SEL, id);
static void _patched_ftt_meth_$_UINavigationBarBackground$setBackgroundColor$(id self, SEL _cmd, id arg1) {
    // Nav Bar
    arg1 = [UIColor colorWithRed:35/255.0 green:35/255.0 blue:35/255.0 alpha:255/255.0];
    _orig_ftt_meth_$_UINavigationBarBackground$setBackgroundColor$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$YTNavigationBar$setBackgroundColor$)(id, SEL, id);
static void _patched_ftt_meth_$YTNavigationBar$setBackgroundColor$(id self, SEL _cmd, id arg1) {
    // Nav Bar #2 (& SB BG in Switcher)
    arg1 = [UIColor colorWithRed:35/255.0 green:35/255.0 blue:35/255.0 alpha:255/255.0];
    _orig_ftt_meth_$YTNavigationBar$setBackgroundColor$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$YTTitleBar_iPad$setThemeColor$foregroundColor$animated$)(id, SEL, id, id, bool);
static void _patched_ftt_meth_$YTTitleBar_iPad$setThemeColor$foregroundColor$animated$(id self, SEL _cmd, id arg1, id arg2, bool arg3) {
    // [iPads] Nav Bar: (Arg#1)	Left Text: (Arg#2)
    arg1 = [UIColor colorWithRed:35/255.0 green:35/255.0 blue:35/255.0 alpha:255/255.0];
    arg2 = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:255/255.0];
    _orig_ftt_meth_$YTTitleBar_iPad$setThemeColor$foregroundColor$animated$(self, _cmd, arg1, arg2, arg3);
}

static void (*_orig_ftt_meth_$YTRightNavigationButtons$setTintColor$)(id, SEL, id);
static void _patched_ftt_meth_$YTRightNavigationButtons$setTintColor$(id self, SEL _cmd, id arg1) {
    // Right Buttons
    arg1 = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:255/255.0];
    _orig_ftt_meth_$YTRightNavigationButtons$setTintColor$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$YTTabTitlesView$setBackgroundColor$)(id, SEL, id);
static void _patched_ftt_meth_$YTTabTitlesView$setBackgroundColor$(id self, SEL _cmd, id arg1) {
    // Lower Tab Buttons
    arg1 = [UIColor colorWithRed:35/255.0 green:35/255.0 blue:35/255.0 alpha:255/255.0];
    _orig_ftt_meth_$YTTabTitlesView$setBackgroundColor$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$YTTabTitlesView$setTabStyle$)(id, SEL, long long);
static void _patched_ftt_meth_$YTTabTitlesView$setTabStyle$(id self, SEL _cmd, long long arg1) {
    // Lower Tab Style: (0=White Blur, 1=Stock, 2=Transparent)
    arg1 = 1;
    _orig_ftt_meth_$YTTabTitlesView$setTabStyle$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$YTTabTitlesView$setTabTitleColor$)(id, SEL, id);
static void _patched_ftt_meth_$YTTabTitlesView$setTabTitleColor$(id self, SEL _cmd, id arg1) {
    // Lower Tab Bar Selected
    arg1 = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:255/255.0];
    _orig_ftt_meth_$YTTabTitlesView$setTabTitleColor$(self, _cmd, arg1);
}

static bool _patched_ftt_meth_$UIStatusBarNewUIStyleAttributes$isTranslucent(id self, SEL _cmd) {
    return 1;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_UIStatusBarNewUIStyleAttributes = objc_getClass("UIStatusBarNewUIStyleAttributes");
    MSHookMessageEx(_ftt_class_UIStatusBarNewUIStyleAttributes, @selector(initWithRequest:backgroundColor:foregroundColor:hasBusyBackground:), (IMP)_patched_ftt_meth_$UIStatusBarNewUIStyleAttributes$initWithRequest$backgroundColor$foregroundColor$hasBusyBackground$, (IMP *)_orig_ftt_meth_$UIStatusBarNewUIStyleAttributes$initWithRequest$backgroundColor$foregroundColor$hasBusyBackground$);
    Class _ftt_class_YTAppView = objc_getClass("YTAppView");
    MSHookMessageEx(_ftt_class_YTAppView, @selector(setStatusBarBackgroundColor:), (IMP)_patched_ftt_meth_$YTAppView$setStatusBarBackgroundColor$, (IMP *)_orig_ftt_meth_$YTAppView$setStatusBarBackgroundColor$);
    Class _ftt_class__UINavigationBarBackground = objc_getClass("_UINavigationBarBackground");
    MSHookMessageEx(_ftt_class__UINavigationBarBackground, @selector(setBackgroundColor:), (IMP)_patched_ftt_meth_$_UINavigationBarBackground$setBackgroundColor$, (IMP *)_orig_ftt_meth_$_UINavigationBarBackground$setBackgroundColor$);
    Class _ftt_class_YTNavigationBar = objc_getClass("YTNavigationBar");
    MSHookMessageEx(_ftt_class_YTNavigationBar, @selector(setBackgroundColor:), (IMP)_patched_ftt_meth_$YTNavigationBar$setBackgroundColor$, (IMP *)_orig_ftt_meth_$YTNavigationBar$setBackgroundColor$);
    Class _ftt_class_YTTitleBar_iPad = objc_getClass("YTTitleBar_iPad");
    MSHookMessageEx(_ftt_class_YTTitleBar_iPad, @selector(setThemeColor:foregroundColor:animated:), (IMP)_patched_ftt_meth_$YTTitleBar_iPad$setThemeColor$foregroundColor$animated$, (IMP *)_orig_ftt_meth_$YTTitleBar_iPad$setThemeColor$foregroundColor$animated$);
    Class _ftt_class_YTRightNavigationButtons = objc_getClass("YTRightNavigationButtons");
    MSHookMessageEx(_ftt_class_YTRightNavigationButtons, @selector(setTintColor:), (IMP)_patched_ftt_meth_$YTRightNavigationButtons$setTintColor$, (IMP *)_orig_ftt_meth_$YTRightNavigationButtons$setTintColor$);
    Class _ftt_class_YTTabTitlesView = objc_getClass("YTTabTitlesView");
    MSHookMessageEx(_ftt_class_YTTabTitlesView, @selector(setBackgroundColor:), (IMP)_patched_ftt_meth_$YTTabTitlesView$setBackgroundColor$, (IMP *)_orig_ftt_meth_$YTTabTitlesView$setBackgroundColor$);
    MSHookMessageEx(_ftt_class_YTTabTitlesView, @selector(setTabStyle:), (IMP)_patched_ftt_meth_$YTTabTitlesView$setTabStyle$, (IMP *)_orig_ftt_meth_$YTTabTitlesView$setTabStyle$);
    MSHookMessageEx(_ftt_class_YTTabTitlesView, @selector(setTabTitleColor:), (IMP)_patched_ftt_meth_$YTTabTitlesView$setTabTitleColor$, (IMP *)_orig_ftt_meth_$YTTabTitlesView$setTabTitleColor$);
    MSHookMessageEx(_ftt_class_UIStatusBarNewUIStyleAttributes, @selector(isTranslucent), (IMP)_patched_ftt_meth_$UIStatusBarNewUIStyleAttributes$isTranslucent, NULL);
}
