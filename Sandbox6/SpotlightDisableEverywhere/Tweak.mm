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

@class SBSearchEtceteraNavigationController; @class SBDashBoardTodayViewController; @class SBSearchEtceteraTodayLayoutContentView; @class SPUINavigationBar; @class SBSearchGesture; 
static void (*_logos_orig$_ungrouped$SBSearchEtceteraNavigationController$setShouldUnderlapNavigationBar$)(_LOGOS_SELF_TYPE_NORMAL SBSearchEtceteraNavigationController* _LOGOS_SELF_CONST, SEL, bool); static void _logos_method$_ungrouped$SBSearchEtceteraNavigationController$setShouldUnderlapNavigationBar$(_LOGOS_SELF_TYPE_NORMAL SBSearchEtceteraNavigationController* _LOGOS_SELF_CONST, SEL, bool); static double (*_logos_orig$_ungrouped$SBSearchEtceteraNavigationController$_statusBarHeightAdjustmentForCurrentOrientation)(_LOGOS_SELF_TYPE_NORMAL SBSearchEtceteraNavigationController* _LOGOS_SELF_CONST, SEL); static double _logos_method$_ungrouped$SBSearchEtceteraNavigationController$_statusBarHeightAdjustmentForCurrentOrientation(_LOGOS_SELF_TYPE_NORMAL SBSearchEtceteraNavigationController* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$SPUINavigationBar$showSeparator$animated$)(_LOGOS_SELF_TYPE_NORMAL SPUINavigationBar* _LOGOS_SELF_CONST, SEL, bool, bool); static void _logos_method$_ungrouped$SPUINavigationBar$showSeparator$animated$(_LOGOS_SELF_TYPE_NORMAL SPUINavigationBar* _LOGOS_SELF_CONST, SEL, bool, bool); static void (*_logos_orig$_ungrouped$SBSearchEtceteraTodayLayoutContentView$setCurrentStyle$)(_LOGOS_SELF_TYPE_NORMAL SBSearchEtceteraTodayLayoutContentView* _LOGOS_SELF_CONST, SEL, unsigned long long); static void _logos_method$_ungrouped$SBSearchEtceteraTodayLayoutContentView$setCurrentStyle$(_LOGOS_SELF_TYPE_NORMAL SBSearchEtceteraTodayLayoutContentView* _LOGOS_SELF_CONST, SEL, unsigned long long); static bool (*_logos_orig$_ungrouped$SBDashBoardTodayViewController$_shouldHideDateTimeForZeroWidgetDisplay)(_LOGOS_SELF_TYPE_NORMAL SBDashBoardTodayViewController* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$SBDashBoardTodayViewController$_shouldHideDateTimeForZeroWidgetDisplay(_LOGOS_SELF_TYPE_NORMAL SBDashBoardTodayViewController* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$SBSearchGesture$setDisabled$forReason$)(_LOGOS_SELF_TYPE_NORMAL SBSearchGesture* _LOGOS_SELF_CONST, SEL, bool, id); static void _logos_method$_ungrouped$SBSearchGesture$setDisabled$forReason$(_LOGOS_SELF_TYPE_NORMAL SBSearchGesture* _LOGOS_SELF_CONST, SEL, bool, id); 

#line 3 "Tweak.xm"

static void _logos_method$_ungrouped$SBSearchEtceteraNavigationController$setShouldUnderlapNavigationBar$(_LOGOS_SELF_TYPE_NORMAL SBSearchEtceteraNavigationController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, bool arg1) {
    arg1 = 1;
    _logos_orig$_ungrouped$SBSearchEtceteraNavigationController$setShouldUnderlapNavigationBar$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$SPUINavigationBar$showSeparator$animated$(_LOGOS_SELF_TYPE_NORMAL SPUINavigationBar* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, bool arg1, bool arg2) {
    arg1 = 0;
    _logos_orig$_ungrouped$SPUINavigationBar$showSeparator$animated$(self, _cmd, arg1, arg2);
}



static double _logos_method$_ungrouped$SBSearchEtceteraNavigationController$_statusBarHeightAdjustmentForCurrentOrientation(_LOGOS_SELF_TYPE_NORMAL SBSearchEtceteraNavigationController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 0;
}



static void _logos_method$_ungrouped$SBSearchEtceteraTodayLayoutContentView$setCurrentStyle$(_LOGOS_SELF_TYPE_NORMAL SBSearchEtceteraTodayLayoutContentView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, unsigned long long arg1) {
    arg1 = 8;
    _logos_orig$_ungrouped$SBSearchEtceteraTodayLayoutContentView$setCurrentStyle$(self, _cmd, arg1);
}



static bool _logos_method$_ungrouped$SBDashBoardTodayViewController$_shouldHideDateTimeForZeroWidgetDisplay(_LOGOS_SELF_TYPE_NORMAL SBDashBoardTodayViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 1;
}



static void _logos_method$_ungrouped$SBSearchGesture$setDisabled$forReason$(_LOGOS_SELF_TYPE_NORMAL SBSearchGesture* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, bool arg1, id arg2) {
    arg1 = 1;
    _logos_orig$_ungrouped$SBSearchGesture$setDisabled$forReason$(self, _cmd, arg1, arg2);
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$SBSearchEtceteraNavigationController = objc_getClass("SBSearchEtceteraNavigationController"); { MSHookMessageEx(_logos_class$_ungrouped$SBSearchEtceteraNavigationController, @selector(setShouldUnderlapNavigationBar:), (IMP)&_logos_method$_ungrouped$SBSearchEtceteraNavigationController$setShouldUnderlapNavigationBar$, (IMP*)&_logos_orig$_ungrouped$SBSearchEtceteraNavigationController$setShouldUnderlapNavigationBar$);}{ MSHookMessageEx(_logos_class$_ungrouped$SBSearchEtceteraNavigationController, @selector(_statusBarHeightAdjustmentForCurrentOrientation), (IMP)&_logos_method$_ungrouped$SBSearchEtceteraNavigationController$_statusBarHeightAdjustmentForCurrentOrientation, (IMP*)&_logos_orig$_ungrouped$SBSearchEtceteraNavigationController$_statusBarHeightAdjustmentForCurrentOrientation);}Class _logos_class$_ungrouped$SPUINavigationBar = objc_getClass("SPUINavigationBar"); { MSHookMessageEx(_logos_class$_ungrouped$SPUINavigationBar, @selector(showSeparator:animated:), (IMP)&_logos_method$_ungrouped$SPUINavigationBar$showSeparator$animated$, (IMP*)&_logos_orig$_ungrouped$SPUINavigationBar$showSeparator$animated$);}Class _logos_class$_ungrouped$SBSearchEtceteraTodayLayoutContentView = objc_getClass("SBSearchEtceteraTodayLayoutContentView"); { MSHookMessageEx(_logos_class$_ungrouped$SBSearchEtceteraTodayLayoutContentView, @selector(setCurrentStyle:), (IMP)&_logos_method$_ungrouped$SBSearchEtceteraTodayLayoutContentView$setCurrentStyle$, (IMP*)&_logos_orig$_ungrouped$SBSearchEtceteraTodayLayoutContentView$setCurrentStyle$);}Class _logos_class$_ungrouped$SBDashBoardTodayViewController = objc_getClass("SBDashBoardTodayViewController"); { MSHookMessageEx(_logos_class$_ungrouped$SBDashBoardTodayViewController, @selector(_shouldHideDateTimeForZeroWidgetDisplay), (IMP)&_logos_method$_ungrouped$SBDashBoardTodayViewController$_shouldHideDateTimeForZeroWidgetDisplay, (IMP*)&_logos_orig$_ungrouped$SBDashBoardTodayViewController$_shouldHideDateTimeForZeroWidgetDisplay);}Class _logos_class$_ungrouped$SBSearchGesture = objc_getClass("SBSearchGesture"); { MSHookMessageEx(_logos_class$_ungrouped$SBSearchGesture, @selector(setDisabled:forReason:), (IMP)&_logos_method$_ungrouped$SBSearchGesture$setDisabled$forReason$, (IMP*)&_logos_orig$_ungrouped$SBSearchGesture$setDisabled$forReason$);}} }
#line 43 "Tweak.xm"
