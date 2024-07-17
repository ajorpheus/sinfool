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

@class SBNotificationSeparatorView; @class _UITableViewHeaderFooterContentView; @class SBTodayViewController; @class SBControlColorSettings; @class _UITableViewCellSeparatorView; @class SBNotificationCenterViewController; @class SBChevronView; @class SBUISizeObservingView; 
static bool (*_logos_orig$_ungrouped$SBNotificationCenterViewController$blursBackground)(_LOGOS_SELF_TYPE_NORMAL SBNotificationCenterViewController* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$SBNotificationCenterViewController$blursBackground(_LOGOS_SELF_TYPE_NORMAL SBNotificationCenterViewController* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$SBUISizeObservingView$setBackgroundColor$)(_LOGOS_SELF_TYPE_NORMAL SBUISizeObservingView* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$SBUISizeObservingView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL SBUISizeObservingView* _LOGOS_SELF_CONST, SEL, id); static SBControlColorSettings* (*_logos_orig$_ungrouped$SBControlColorSettings$initWithTintColor$selectedTintColor$textColor$selectedTextColor$)(_LOGOS_SELF_TYPE_INIT SBControlColorSettings*, SEL, id, id, id, id) _LOGOS_RETURN_RETAINED; static SBControlColorSettings* _logos_method$_ungrouped$SBControlColorSettings$initWithTintColor$selectedTintColor$textColor$selectedTextColor$(_LOGOS_SELF_TYPE_INIT SBControlColorSettings*, SEL, id, id, id, id) _LOGOS_RETURN_RETAINED; static void (*_logos_orig$_ungrouped$SBNotificationSeparatorView$setBackgroundColor$)(_LOGOS_SELF_TYPE_NORMAL SBNotificationSeparatorView* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$SBNotificationSeparatorView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL SBNotificationSeparatorView* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$_UITableViewHeaderFooterContentView$setBackgroundColor$)(_LOGOS_SELF_TYPE_NORMAL _UITableViewHeaderFooterContentView* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$_UITableViewHeaderFooterContentView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL _UITableViewHeaderFooterContentView* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$_UITableViewCellSeparatorView$setBackgroundColor$)(_LOGOS_SELF_TYPE_NORMAL _UITableViewCellSeparatorView* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$_UITableViewCellSeparatorView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL _UITableViewCellSeparatorView* _LOGOS_SELF_CONST, SEL, id); static id (*_logos_orig$_ungrouped$SBTodayViewController$todayTableFooterView)(_LOGOS_SELF_TYPE_NORMAL SBTodayViewController* _LOGOS_SELF_CONST, SEL); static id _logos_method$_ungrouped$SBTodayViewController$todayTableFooterView(_LOGOS_SELF_TYPE_NORMAL SBTodayViewController* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$SBChevronView$setColor$)(_LOGOS_SELF_TYPE_NORMAL SBChevronView* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$SBChevronView$setColor$(_LOGOS_SELF_TYPE_NORMAL SBChevronView* _LOGOS_SELF_CONST, SEL, id); 

#line 3 "Tweak.xm"

static bool _logos_method$_ungrouped$SBNotificationCenterViewController$blursBackground(_LOGOS_SELF_TYPE_NORMAL SBNotificationCenterViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 0;
}



static void _logos_method$_ungrouped$SBUISizeObservingView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL SBUISizeObservingView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = [UIColor colorWithRed:98/255.0 green:52/255.0 blue:85/255.0 alpha:255/255.0];
    _logos_orig$_ungrouped$SBUISizeObservingView$setBackgroundColor$(self, _cmd, arg1);
}



static SBControlColorSettings* _logos_method$_ungrouped$SBControlColorSettings$initWithTintColor$selectedTintColor$textColor$selectedTextColor$(_LOGOS_SELF_TYPE_INIT SBControlColorSettings* __unused self, SEL __unused _cmd, id arg1, id arg2, id arg3, id arg4) _LOGOS_RETURN_RETAINED {
    
    arg1 = [UIColor colorWithRed:69/255.0 green:43/255.0 blue:54/255.0 alpha:255/255.0];
    arg3 = [UIColor colorWithRed:147/255.0 green:83/255.0 blue:135/255.0 alpha:255/255.0];
    arg2 = [UIColor colorWithRed:255/255.0 green:144/255.0 blue:235/255.0 alpha:255/255.0];
    arg4 = [UIColor colorWithRed:200/255.0 green:192/255.0 blue:195/255.0 alpha:255/255.0];
    return _logos_orig$_ungrouped$SBControlColorSettings$initWithTintColor$selectedTintColor$textColor$selectedTextColor$(self, _cmd, arg1, arg2, arg3, arg4);
}



static void _logos_method$_ungrouped$SBNotificationSeparatorView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL SBNotificationSeparatorView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = [UIColor colorWithRed:255/255.0 green:144/255.0 blue:235/255.0 alpha:255/255.0];
    _logos_orig$_ungrouped$SBNotificationSeparatorView$setBackgroundColor$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$_UITableViewHeaderFooterContentView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL _UITableViewHeaderFooterContentView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = [UIColor colorWithRed:84/255.0 green:58/255.0 blue:69/255.0 alpha:255/255.0];
    _logos_orig$_ungrouped$_UITableViewHeaderFooterContentView$setBackgroundColor$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$_UITableViewCellSeparatorView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL _UITableViewCellSeparatorView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = [UIColor colorWithRed:255/255.0 green:144/255.0 blue:235/255.0 alpha:255/255.0];
    _logos_orig$_ungrouped$_UITableViewCellSeparatorView$setBackgroundColor$(self, _cmd, arg1);
}



static id _logos_method$_ungrouped$SBTodayViewController$todayTableFooterView(_LOGOS_SELF_TYPE_NORMAL SBTodayViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return NULL;
}



static void _logos_method$_ungrouped$SBChevronView$setColor$(_LOGOS_SELF_TYPE_NORMAL SBChevronView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = [UIColor colorWithRed:134/255.0 green:69/255.0 blue:97/255.0 alpha:255/255.0];
    _logos_orig$_ungrouped$SBChevronView$setColor$(self, _cmd, arg1);
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$SBNotificationCenterViewController = objc_getClass("SBNotificationCenterViewController"); { MSHookMessageEx(_logos_class$_ungrouped$SBNotificationCenterViewController, @selector(blursBackground), (IMP)&_logos_method$_ungrouped$SBNotificationCenterViewController$blursBackground, (IMP*)&_logos_orig$_ungrouped$SBNotificationCenterViewController$blursBackground);}Class _logos_class$_ungrouped$SBUISizeObservingView = objc_getClass("SBUISizeObservingView"); { MSHookMessageEx(_logos_class$_ungrouped$SBUISizeObservingView, @selector(setBackgroundColor:), (IMP)&_logos_method$_ungrouped$SBUISizeObservingView$setBackgroundColor$, (IMP*)&_logos_orig$_ungrouped$SBUISizeObservingView$setBackgroundColor$);}Class _logos_class$_ungrouped$SBControlColorSettings = objc_getClass("SBControlColorSettings"); { MSHookMessageEx(_logos_class$_ungrouped$SBControlColorSettings, @selector(initWithTintColor:selectedTintColor:textColor:selectedTextColor:), (IMP)&_logos_method$_ungrouped$SBControlColorSettings$initWithTintColor$selectedTintColor$textColor$selectedTextColor$, (IMP*)&_logos_orig$_ungrouped$SBControlColorSettings$initWithTintColor$selectedTintColor$textColor$selectedTextColor$);}Class _logos_class$_ungrouped$SBNotificationSeparatorView = objc_getClass("SBNotificationSeparatorView"); { MSHookMessageEx(_logos_class$_ungrouped$SBNotificationSeparatorView, @selector(setBackgroundColor:), (IMP)&_logos_method$_ungrouped$SBNotificationSeparatorView$setBackgroundColor$, (IMP*)&_logos_orig$_ungrouped$SBNotificationSeparatorView$setBackgroundColor$);}Class _logos_class$_ungrouped$_UITableViewHeaderFooterContentView = objc_getClass("_UITableViewHeaderFooterContentView"); { MSHookMessageEx(_logos_class$_ungrouped$_UITableViewHeaderFooterContentView, @selector(setBackgroundColor:), (IMP)&_logos_method$_ungrouped$_UITableViewHeaderFooterContentView$setBackgroundColor$, (IMP*)&_logos_orig$_ungrouped$_UITableViewHeaderFooterContentView$setBackgroundColor$);}Class _logos_class$_ungrouped$_UITableViewCellSeparatorView = objc_getClass("_UITableViewCellSeparatorView"); { MSHookMessageEx(_logos_class$_ungrouped$_UITableViewCellSeparatorView, @selector(setBackgroundColor:), (IMP)&_logos_method$_ungrouped$_UITableViewCellSeparatorView$setBackgroundColor$, (IMP*)&_logos_orig$_ungrouped$_UITableViewCellSeparatorView$setBackgroundColor$);}Class _logos_class$_ungrouped$SBTodayViewController = objc_getClass("SBTodayViewController"); { MSHookMessageEx(_logos_class$_ungrouped$SBTodayViewController, @selector(todayTableFooterView), (IMP)&_logos_method$_ungrouped$SBTodayViewController$todayTableFooterView, (IMP*)&_logos_orig$_ungrouped$SBTodayViewController$todayTableFooterView);}Class _logos_class$_ungrouped$SBChevronView = objc_getClass("SBChevronView"); { MSHookMessageEx(_logos_class$_ungrouped$SBChevronView, @selector(setColor:), (IMP)&_logos_method$_ungrouped$SBChevronView$setColor$, (IMP*)&_logos_orig$_ungrouped$SBChevronView$setColor$);}} }
#line 68 "Tweak.xm"