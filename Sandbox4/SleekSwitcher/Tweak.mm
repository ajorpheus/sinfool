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

@class SBAppSwitcherIconController; @class SBAppSwitcherPageViewController; 
static double (*_logos_orig$_ungrouped$SBAppSwitcherIconController$iconLabelWidth)(_LOGOS_SELF_TYPE_NORMAL SBAppSwitcherIconController* _LOGOS_SELF_CONST, SEL); static double _logos_method$_ungrouped$SBAppSwitcherIconController$iconLabelWidth(_LOGOS_SELF_TYPE_NORMAL SBAppSwitcherIconController* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$SBAppSwitcherIconController$setOffsetToIndex$animated$)(_LOGOS_SELF_TYPE_NORMAL SBAppSwitcherIconController* _LOGOS_SELF_CONST, SEL, unsigned long long, bool); static void _logos_method$_ungrouped$SBAppSwitcherIconController$setOffsetToIndex$animated$(_LOGOS_SELF_TYPE_NORMAL SBAppSwitcherIconController* _LOGOS_SELF_CONST, SEL, unsigned long long, bool); static void (*_logos_orig$_ungrouped$SBAppSwitcherPageViewController$setOffsetToIndex$animated$)(_LOGOS_SELF_TYPE_NORMAL SBAppSwitcherPageViewController* _LOGOS_SELF_CONST, SEL, unsigned long long, bool); static void _logos_method$_ungrouped$SBAppSwitcherPageViewController$setOffsetToIndex$animated$(_LOGOS_SELF_TYPE_NORMAL SBAppSwitcherPageViewController* _LOGOS_SELF_CONST, SEL, unsigned long long, bool); 

#line 3 "Tweak.xm"

static double _logos_method$_ungrouped$SBAppSwitcherIconController$iconLabelWidth(_LOGOS_SELF_TYPE_NORMAL SBAppSwitcherIconController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 0;
}



static void _logos_method$_ungrouped$SBAppSwitcherPageViewController$setOffsetToIndex$animated$(_LOGOS_SELF_TYPE_NORMAL SBAppSwitcherPageViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, unsigned long long arg1, bool arg2) {
    
    arg1 = 0;
    _logos_orig$_ungrouped$SBAppSwitcherPageViewController$setOffsetToIndex$animated$(self, _cmd, arg1, arg2);
}



static void _logos_method$_ungrouped$SBAppSwitcherIconController$setOffsetToIndex$animated$(_LOGOS_SELF_TYPE_NORMAL SBAppSwitcherIconController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, unsigned long long arg1, bool arg2) {
    
    arg1 = 0;
    _logos_orig$_ungrouped$SBAppSwitcherIconController$setOffsetToIndex$animated$(self, _cmd, arg1, arg2);
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$SBAppSwitcherIconController = objc_getClass("SBAppSwitcherIconController"); { MSHookMessageEx(_logos_class$_ungrouped$SBAppSwitcherIconController, @selector(iconLabelWidth), (IMP)&_logos_method$_ungrouped$SBAppSwitcherIconController$iconLabelWidth, (IMP*)&_logos_orig$_ungrouped$SBAppSwitcherIconController$iconLabelWidth);}{ MSHookMessageEx(_logos_class$_ungrouped$SBAppSwitcherIconController, @selector(setOffsetToIndex:animated:), (IMP)&_logos_method$_ungrouped$SBAppSwitcherIconController$setOffsetToIndex$animated$, (IMP*)&_logos_orig$_ungrouped$SBAppSwitcherIconController$setOffsetToIndex$animated$);}Class _logos_class$_ungrouped$SBAppSwitcherPageViewController = objc_getClass("SBAppSwitcherPageViewController"); { MSHookMessageEx(_logos_class$_ungrouped$SBAppSwitcherPageViewController, @selector(setOffsetToIndex:animated:), (IMP)&_logos_method$_ungrouped$SBAppSwitcherPageViewController$setOffsetToIndex$animated$, (IMP*)&_logos_orig$_ungrouped$SBAppSwitcherPageViewController$setOffsetToIndex$animated$);}} }
#line 26 "Tweak.xm"
