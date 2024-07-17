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

@class SBDashBoardTodayViewController; @class SBFLockScreenDateView; @class SBDashBoardViewController; 
static bool (*_logos_orig$_ungrouped$SBDashBoardTodayViewController$_shouldHideDateTimeForZeroWidgetDisplay)(_LOGOS_SELF_TYPE_NORMAL SBDashBoardTodayViewController* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$SBDashBoardTodayViewController$_shouldHideDateTimeForZeroWidgetDisplay(_LOGOS_SELF_TYPE_NORMAL SBDashBoardTodayViewController* _LOGOS_SELF_CONST, SEL); static bool (*_logos_orig$_ungrouped$SBDashBoardViewController$shouldAutorotate)(_LOGOS_SELF_TYPE_NORMAL SBDashBoardViewController* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$SBDashBoardViewController$shouldAutorotate(_LOGOS_SELF_TYPE_NORMAL SBDashBoardViewController* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$SBFLockScreenDateView$setAlignmentPercent$)(_LOGOS_SELF_TYPE_NORMAL SBFLockScreenDateView* _LOGOS_SELF_CONST, SEL, double); static void _logos_method$_ungrouped$SBFLockScreenDateView$setAlignmentPercent$(_LOGOS_SELF_TYPE_NORMAL SBFLockScreenDateView* _LOGOS_SELF_CONST, SEL, double); 

#line 3 "Tweak.xm"

static bool _logos_method$_ungrouped$SBDashBoardTodayViewController$_shouldHideDateTimeForZeroWidgetDisplay(_LOGOS_SELF_TYPE_NORMAL SBDashBoardTodayViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 1;
}



static bool _logos_method$_ungrouped$SBDashBoardViewController$shouldAutorotate(_LOGOS_SELF_TYPE_NORMAL SBDashBoardViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 1;
}



static void _logos_method$_ungrouped$SBFLockScreenDateView$setAlignmentPercent$(_LOGOS_SELF_TYPE_NORMAL SBFLockScreenDateView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, double arg1) {
    arg1 = -1;
    _logos_orig$_ungrouped$SBFLockScreenDateView$setAlignmentPercent$(self, _cmd, arg1);
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$SBDashBoardTodayViewController = objc_getClass("SBDashBoardTodayViewController"); { MSHookMessageEx(_logos_class$_ungrouped$SBDashBoardTodayViewController, @selector(_shouldHideDateTimeForZeroWidgetDisplay), (IMP)&_logos_method$_ungrouped$SBDashBoardTodayViewController$_shouldHideDateTimeForZeroWidgetDisplay, (IMP*)&_logos_orig$_ungrouped$SBDashBoardTodayViewController$_shouldHideDateTimeForZeroWidgetDisplay);}Class _logos_class$_ungrouped$SBDashBoardViewController = objc_getClass("SBDashBoardViewController"); { MSHookMessageEx(_logos_class$_ungrouped$SBDashBoardViewController, @selector(shouldAutorotate), (IMP)&_logos_method$_ungrouped$SBDashBoardViewController$shouldAutorotate, (IMP*)&_logos_orig$_ungrouped$SBDashBoardViewController$shouldAutorotate);}Class _logos_class$_ungrouped$SBFLockScreenDateView = objc_getClass("SBFLockScreenDateView"); { MSHookMessageEx(_logos_class$_ungrouped$SBFLockScreenDateView, @selector(setAlignmentPercent:), (IMP)&_logos_method$_ungrouped$SBFLockScreenDateView$setAlignmentPercent$, (IMP*)&_logos_orig$_ungrouped$SBFLockScreenDateView$setAlignmentPercent$);}} }
#line 24 "Tweak.xm"
