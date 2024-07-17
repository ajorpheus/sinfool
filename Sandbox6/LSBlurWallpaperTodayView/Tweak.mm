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

@class SBDashBoardViewController; @class SBDashBoardTodayViewController; 
static long long (*_logos_orig$_ungrouped$SBDashBoardTodayViewController$backgroundStyle)(_LOGOS_SELF_TYPE_NORMAL SBDashBoardTodayViewController* _LOGOS_SELF_CONST, SEL); static long long _logos_method$_ungrouped$SBDashBoardTodayViewController$backgroundStyle(_LOGOS_SELF_TYPE_NORMAL SBDashBoardTodayViewController* _LOGOS_SELF_CONST, SEL); static bool (*_logos_orig$_ungrouped$SBDashBoardViewController$isTransitioning)(_LOGOS_SELF_TYPE_NORMAL SBDashBoardViewController* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$SBDashBoardViewController$isTransitioning(_LOGOS_SELF_TYPE_NORMAL SBDashBoardViewController* _LOGOS_SELF_CONST, SEL); 

#line 3 "Tweak.xm"

static long long _logos_method$_ungrouped$SBDashBoardTodayViewController$backgroundStyle(_LOGOS_SELF_TYPE_NORMAL SBDashBoardTodayViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 6;
}



static bool _logos_method$_ungrouped$SBDashBoardViewController$isTransitioning(_LOGOS_SELF_TYPE_NORMAL SBDashBoardViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 0;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$SBDashBoardTodayViewController = objc_getClass("SBDashBoardTodayViewController"); { MSHookMessageEx(_logos_class$_ungrouped$SBDashBoardTodayViewController, @selector(backgroundStyle), (IMP)&_logos_method$_ungrouped$SBDashBoardTodayViewController$backgroundStyle, (IMP*)&_logos_orig$_ungrouped$SBDashBoardTodayViewController$backgroundStyle);}Class _logos_class$_ungrouped$SBDashBoardViewController = objc_getClass("SBDashBoardViewController"); { MSHookMessageEx(_logos_class$_ungrouped$SBDashBoardViewController, @selector(isTransitioning), (IMP)&_logos_method$_ungrouped$SBDashBoardViewController$isTransitioning, (IMP*)&_logos_orig$_ungrouped$SBDashBoardViewController$isTransitioning);}} }
#line 17 "Tweak.xm"
