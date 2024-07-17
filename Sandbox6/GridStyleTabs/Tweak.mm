#line 1 "Tweak.xm"
#import <UIKit/UIKit.h>


#include <substrate.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

asm(".linker_option \"-framework\", \"CydiaSubstrate\"");

@class BrowserToolbar; @class TabOverview; @class _UIMotionAnalyzer; @class TabThumbnailView; @class TabOverviewItem; @class TabController; 
static id (*_logos_orig$_ungrouped$TabOverviewItem$stackName)(_LOGOS_SELF_TYPE_NORMAL TabOverviewItem* _LOGOS_SELF_CONST, SEL); static id _logos_method$_ungrouped$TabOverviewItem$stackName(_LOGOS_SELF_TYPE_NORMAL TabOverviewItem* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$TabOverviewItem$setTitleColor$)(_LOGOS_SELF_TYPE_NORMAL TabOverviewItem* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$TabOverviewItem$setTitleColor$(_LOGOS_SELF_TYPE_NORMAL TabOverviewItem* _LOGOS_SELF_CONST, SEL, id); static unsigned long long (*_logos_orig$_ungrouped$TabOverview$_tabsPerRow)(_LOGOS_SELF_TYPE_NORMAL TabOverview* _LOGOS_SELF_CONST, SEL); static unsigned long long _logos_method$_ungrouped$TabOverview$_tabsPerRow(_LOGOS_SELF_TYPE_NORMAL TabOverview* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$TabThumbnailView$setTitleColor$)(_LOGOS_SELF_TYPE_NORMAL TabThumbnailView* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$TabThumbnailView$setTitleColor$(_LOGOS_SELF_TYPE_NORMAL TabThumbnailView* _LOGOS_SELF_CONST, SEL, id); static _UIMotionAnalyzer* (*_logos_orig$_ungrouped$_UIMotionAnalyzer$initWithSettings$)(_LOGOS_SELF_TYPE_INIT _UIMotionAnalyzer*, SEL, id) _LOGOS_RETURN_RETAINED; static _UIMotionAnalyzer* _logos_method$_ungrouped$_UIMotionAnalyzer$initWithSettings$(_LOGOS_SELF_TYPE_INIT _UIMotionAnalyzer*, SEL, id) _LOGOS_RETURN_RETAINED; static BrowserToolbar* (*_logos_orig$_ungrouped$BrowserToolbar$initWithPlacement$)(_LOGOS_SELF_TYPE_INIT BrowserToolbar*, SEL, long long) _LOGOS_RETURN_RETAINED; static BrowserToolbar* _logos_method$_ungrouped$BrowserToolbar$initWithPlacement$(_LOGOS_SELF_TYPE_INIT BrowserToolbar*, SEL, long long) _LOGOS_RETURN_RETAINED; static void (*_logos_orig$_ungrouped$TabController$setUsesTiltedTabView$)(_LOGOS_SELF_TYPE_NORMAL TabController* _LOGOS_SELF_CONST, SEL, bool); static void _logos_method$_ungrouped$TabController$setUsesTiltedTabView$(_LOGOS_SELF_TYPE_NORMAL TabController* _LOGOS_SELF_CONST, SEL, bool); static void (*_logos_orig$_ungrouped$TabController$setUsesTabOverview$)(_LOGOS_SELF_TYPE_NORMAL TabController* _LOGOS_SELF_CONST, SEL, bool); static void _logos_method$_ungrouped$TabController$setUsesTabOverview$(_LOGOS_SELF_TYPE_NORMAL TabController* _LOGOS_SELF_CONST, SEL, bool); 

#line 3 "Tweak.xm"

static id _logos_method$_ungrouped$TabOverviewItem$stackName(_LOGOS_SELF_TYPE_NORMAL TabOverviewItem* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return NULL;
}



static unsigned long long _logos_method$_ungrouped$TabOverview$_tabsPerRow(_LOGOS_SELF_TYPE_NORMAL TabOverview* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 3;
}



static void _logos_method$_ungrouped$TabOverviewItem$setTitleColor$(_LOGOS_SELF_TYPE_NORMAL TabOverviewItem* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = [UIColor colorWithRed:253/255.0 green:2/255.0 blue:16/255.0 alpha:255/255.0];
    _logos_orig$_ungrouped$TabOverviewItem$setTitleColor$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$TabThumbnailView$setTitleColor$(_LOGOS_SELF_TYPE_NORMAL TabThumbnailView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:255/255.0];
    _logos_orig$_ungrouped$TabThumbnailView$setTitleColor$(self, _cmd, arg1);
}



static _UIMotionAnalyzer* _logos_method$_ungrouped$_UIMotionAnalyzer$initWithSettings$(_LOGOS_SELF_TYPE_INIT _UIMotionAnalyzer* __unused self, SEL __unused _cmd, id arg1) _LOGOS_RETURN_RETAINED {
    
    return NULL;
}



static BrowserToolbar* _logos_method$_ungrouped$BrowserToolbar$initWithPlacement$(_LOGOS_SELF_TYPE_INIT BrowserToolbar* __unused self, SEL __unused _cmd, long long arg1) _LOGOS_RETURN_RETAINED {
    
    arg1 = 0;
    return _logos_orig$_ungrouped$BrowserToolbar$initWithPlacement$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$TabController$setUsesTiltedTabView$(_LOGOS_SELF_TYPE_NORMAL TabController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, bool arg1) {
    arg1 = 0;
    _logos_orig$_ungrouped$TabController$setUsesTiltedTabView$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$TabController$setUsesTabOverview$(_LOGOS_SELF_TYPE_NORMAL TabController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, bool arg1) {
    arg1 = 1;
    _logos_orig$_ungrouped$TabController$setUsesTabOverview$(self, _cmd, arg1);
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$TabOverviewItem = objc_getClass("TabOverviewItem"); { MSHookMessageEx(_logos_class$_ungrouped$TabOverviewItem, @selector(stackName), (IMP)&_logos_method$_ungrouped$TabOverviewItem$stackName, (IMP*)&_logos_orig$_ungrouped$TabOverviewItem$stackName);}{ MSHookMessageEx(_logos_class$_ungrouped$TabOverviewItem, @selector(setTitleColor:), (IMP)&_logos_method$_ungrouped$TabOverviewItem$setTitleColor$, (IMP*)&_logos_orig$_ungrouped$TabOverviewItem$setTitleColor$);}Class _logos_class$_ungrouped$TabOverview = objc_getClass("TabOverview"); { MSHookMessageEx(_logos_class$_ungrouped$TabOverview, @selector(_tabsPerRow), (IMP)&_logos_method$_ungrouped$TabOverview$_tabsPerRow, (IMP*)&_logos_orig$_ungrouped$TabOverview$_tabsPerRow);}Class _logos_class$_ungrouped$TabThumbnailView = objc_getClass("TabThumbnailView"); { MSHookMessageEx(_logos_class$_ungrouped$TabThumbnailView, @selector(setTitleColor:), (IMP)&_logos_method$_ungrouped$TabThumbnailView$setTitleColor$, (IMP*)&_logos_orig$_ungrouped$TabThumbnailView$setTitleColor$);}Class _logos_class$_ungrouped$_UIMotionAnalyzer = objc_getClass("_UIMotionAnalyzer"); { MSHookMessageEx(_logos_class$_ungrouped$_UIMotionAnalyzer, @selector(initWithSettings:), (IMP)&_logos_method$_ungrouped$_UIMotionAnalyzer$initWithSettings$, (IMP*)&_logos_orig$_ungrouped$_UIMotionAnalyzer$initWithSettings$);}Class _logos_class$_ungrouped$BrowserToolbar = objc_getClass("BrowserToolbar"); { MSHookMessageEx(_logos_class$_ungrouped$BrowserToolbar, @selector(initWithPlacement:), (IMP)&_logos_method$_ungrouped$BrowserToolbar$initWithPlacement$, (IMP*)&_logos_orig$_ungrouped$BrowserToolbar$initWithPlacement$);}Class _logos_class$_ungrouped$TabController = objc_getClass("TabController"); { MSHookMessageEx(_logos_class$_ungrouped$TabController, @selector(setUsesTiltedTabView:), (IMP)&_logos_method$_ungrouped$TabController$setUsesTiltedTabView$, (IMP*)&_logos_orig$_ungrouped$TabController$setUsesTiltedTabView$);}{ MSHookMessageEx(_logos_class$_ungrouped$TabController, @selector(setUsesTabOverview:), (IMP)&_logos_method$_ungrouped$TabController$setUsesTabOverview$, (IMP*)&_logos_orig$_ungrouped$TabController$setUsesTabOverview$);}} }
#line 62 "Tweak.xm"
