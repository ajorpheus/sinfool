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

@class SBDashBoardViewController; @class SBDashBoardAppearance; 
static void (*_logos_orig$_ungrouped$SBDashBoardAppearance$setBackgroundColor$)(_LOGOS_SELF_TYPE_NORMAL SBDashBoardAppearance* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$SBDashBoardAppearance$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL SBDashBoardAppearance* _LOGOS_SELF_CONST, SEL, id); static bool (*_logos_orig$_ungrouped$SBDashBoardViewController$isTransitioning)(_LOGOS_SELF_TYPE_NORMAL SBDashBoardViewController* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$SBDashBoardViewController$isTransitioning(_LOGOS_SELF_TYPE_NORMAL SBDashBoardViewController* _LOGOS_SELF_CONST, SEL); 

#line 3 "Tweak.xm"

static void _logos_method$_ungrouped$SBDashBoardAppearance$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL SBDashBoardAppearance* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = [UIColor colorWithRed:17/255.0 green:104/255.0 blue:104/255.0 alpha:255/255.0];
    _logos_orig$_ungrouped$SBDashBoardAppearance$setBackgroundColor$(self, _cmd, arg1);
}



static bool _logos_method$_ungrouped$SBDashBoardViewController$isTransitioning(_LOGOS_SELF_TYPE_NORMAL SBDashBoardViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 0;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$SBDashBoardAppearance = objc_getClass("SBDashBoardAppearance"); { MSHookMessageEx(_logos_class$_ungrouped$SBDashBoardAppearance, @selector(setBackgroundColor:), (IMP)&_logos_method$_ungrouped$SBDashBoardAppearance$setBackgroundColor$, (IMP*)&_logos_orig$_ungrouped$SBDashBoardAppearance$setBackgroundColor$);}Class _logos_class$_ungrouped$SBDashBoardViewController = objc_getClass("SBDashBoardViewController"); { MSHookMessageEx(_logos_class$_ungrouped$SBDashBoardViewController, @selector(isTransitioning), (IMP)&_logos_method$_ungrouped$SBDashBoardViewController$isTransitioning, (IMP*)&_logos_orig$_ungrouped$SBDashBoardViewController$isTransitioning);}} }
#line 17 "Tweak.xm"
