#import <UIKit/UIKit.h>

#include <substrate.h>

static id _patched_ftt_meth_$TabOverviewItem$stackName(id self, SEL _cmd) {
    // Single Tabs (=NULL)  Stacked Tabs (=pass-through)
    return NULL;
}

static unsigned long long _patched_ftt_meth_$TabOverview$_tabsPerRow(id self, SEL _cmd) {
    // Tabs Per Row
    return 3;
}

static void (*_orig_ftt_meth_$TabOverviewItem$setTitleColor$)(id, SEL, id);
static void _patched_ftt_meth_$TabOverviewItem$setTitleColor$(id self, SEL _cmd, id arg1) {
    // "X" Color
    arg1 = [UIColor colorWithRed:253/255.0 green:2/255.0 blue:16/255.0 alpha:255/255.0];
    _orig_ftt_meth_$TabOverviewItem$setTitleColor$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$TabThumbnailView$setTitleColor$)(id, SEL, id);
static void _patched_ftt_meth_$TabThumbnailView$setTitleColor$(id self, SEL _cmd, id arg1) {
    // Tab Title Color
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:255/255.0];
    _orig_ftt_meth_$TabThumbnailView$setTitleColor$(self, _cmd, arg1);
}

static id _patched_ftt_meth_$_UIMotionAnalyzer$initWithSettings$(id self, SEL _cmd, id arg1) {
    // Disable Parallax  (Yes=NULL, No=pass-through)
    return NULL;
}

static id (*_orig_ftt_meth_$BrowserToolbar$initWithPlacement$)(id, SEL, long long);
static id _patched_ftt_meth_$BrowserToolbar$initWithPlacement$(id self, SEL _cmd, long long arg1) {
    // Transparent Toolbar/Move Buttons To Sides  (Yes=0, No=pass-through)
    arg1 = 0;
    return _orig_ftt_meth_$BrowserToolbar$initWithPlacement$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$TabController$setUsesTiltedTabView$)(id, SEL, bool);
static void _patched_ftt_meth_$TabController$setUsesTiltedTabView$(id self, SEL _cmd, bool arg1) {
    arg1 = 0;
    _orig_ftt_meth_$TabController$setUsesTiltedTabView$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$TabController$setUsesTabOverview$)(id, SEL, bool);
static void _patched_ftt_meth_$TabController$setUsesTabOverview$(id self, SEL _cmd, bool arg1) {
    arg1 = 1;
    _orig_ftt_meth_$TabController$setUsesTabOverview$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_TabOverviewItem = objc_getClass("TabOverviewItem");
    MSHookMessageEx(_ftt_class_TabOverviewItem, @selector(stackName), (IMP)_patched_ftt_meth_$TabOverviewItem$stackName, NULL);
    Class _ftt_class_TabOverview = objc_getClass("TabOverview");
    MSHookMessageEx(_ftt_class_TabOverview, @selector(_tabsPerRow), (IMP)_patched_ftt_meth_$TabOverview$_tabsPerRow, NULL);
    MSHookMessageEx(_ftt_class_TabOverviewItem, @selector(setTitleColor:), (IMP)_patched_ftt_meth_$TabOverviewItem$setTitleColor$, (IMP *)_orig_ftt_meth_$TabOverviewItem$setTitleColor$);
    Class _ftt_class_TabThumbnailView = objc_getClass("TabThumbnailView");
    MSHookMessageEx(_ftt_class_TabThumbnailView, @selector(setTitleColor:), (IMP)_patched_ftt_meth_$TabThumbnailView$setTitleColor$, (IMP *)_orig_ftt_meth_$TabThumbnailView$setTitleColor$);
    Class _ftt_class__UIMotionAnalyzer = objc_getClass("_UIMotionAnalyzer");
    MSHookMessageEx(_ftt_class__UIMotionAnalyzer, @selector(initWithSettings:), (IMP)_patched_ftt_meth_$_UIMotionAnalyzer$initWithSettings$, NULL);
    Class _ftt_class_BrowserToolbar = objc_getClass("BrowserToolbar");
    MSHookMessageEx(_ftt_class_BrowserToolbar, @selector(initWithPlacement:), (IMP)_patched_ftt_meth_$BrowserToolbar$initWithPlacement$, (IMP *)_orig_ftt_meth_$BrowserToolbar$initWithPlacement$);
    Class _ftt_class_TabController = objc_getClass("TabController");
    MSHookMessageEx(_ftt_class_TabController, @selector(setUsesTiltedTabView:), (IMP)_patched_ftt_meth_$TabController$setUsesTiltedTabView$, (IMP *)_orig_ftt_meth_$TabController$setUsesTiltedTabView$);
    MSHookMessageEx(_ftt_class_TabController, @selector(setUsesTabOverview:), (IMP)_patched_ftt_meth_$TabController$setUsesTabOverview$, (IMP *)_orig_ftt_meth_$TabController$setUsesTabOverview$);
}
