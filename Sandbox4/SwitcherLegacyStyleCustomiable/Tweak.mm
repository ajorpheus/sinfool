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

@class SBAppSwitcherPageViewController; @class SBAppSwitcherIconController; @class SBAppSwitcherSettings; @class SBUIDismissSwitcherAnimationController; @class SBAppSwitcherController; 
static void (*_logos_orig$_ungrouped$SBAppSwitcherController$_updatePageViewScale$xTranslation$)(_LOGOS_SELF_TYPE_NORMAL SBAppSwitcherController* _LOGOS_SELF_CONST, SEL, double, double); static void _logos_method$_ungrouped$SBAppSwitcherController$_updatePageViewScale$xTranslation$(_LOGOS_SELF_TYPE_NORMAL SBAppSwitcherController* _LOGOS_SELF_CONST, SEL, double, double); static void (*_logos_orig$_ungrouped$SBAppSwitcherPageViewController$setOffsetToIndex$animated$)(_LOGOS_SELF_TYPE_NORMAL SBAppSwitcherPageViewController* _LOGOS_SELF_CONST, SEL, unsigned long long, bool); static void _logos_method$_ungrouped$SBAppSwitcherPageViewController$setOffsetToIndex$animated$(_LOGOS_SELF_TYPE_NORMAL SBAppSwitcherPageViewController* _LOGOS_SELF_CONST, SEL, unsigned long long, bool); static void (*_logos_orig$_ungrouped$SBAppSwitcherIconController$setOffsetToIndex$animated$)(_LOGOS_SELF_TYPE_NORMAL SBAppSwitcherIconController* _LOGOS_SELF_CONST, SEL, unsigned long long, bool); static void _logos_method$_ungrouped$SBAppSwitcherIconController$setOffsetToIndex$animated$(_LOGOS_SELF_TYPE_NORMAL SBAppSwitcherIconController* _LOGOS_SELF_CONST, SEL, unsigned long long, bool); static SBUIDismissSwitcherAnimationController* (*_logos_orig$_ungrouped$SBUIDismissSwitcherAnimationController$initWithTransitionContextProvider$activatingDisplayItem$interactive$)(_LOGOS_SELF_TYPE_INIT SBUIDismissSwitcherAnimationController*, SEL, id, id, bool) _LOGOS_RETURN_RETAINED; static SBUIDismissSwitcherAnimationController* _logos_method$_ungrouped$SBUIDismissSwitcherAnimationController$initWithTransitionContextProvider$activatingDisplayItem$interactive$(_LOGOS_SELF_TYPE_INIT SBUIDismissSwitcherAnimationController*, SEL, id, id, bool) _LOGOS_RETURN_RETAINED; static long long (*_logos_orig$_ungrouped$SBAppSwitcherSettings$switcherStyle)(_LOGOS_SELF_TYPE_NORMAL SBAppSwitcherSettings* _LOGOS_SELF_CONST, SEL); static long long _logos_method$_ungrouped$SBAppSwitcherSettings$switcherStyle(_LOGOS_SELF_TYPE_NORMAL SBAppSwitcherSettings* _LOGOS_SELF_CONST, SEL); 

#line 3 "Tweak.xm"

static void _logos_method$_ungrouped$SBAppSwitcherController$_updatePageViewScale$xTranslation$(_LOGOS_SELF_TYPE_NORMAL SBAppSwitcherController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, double arg1, double arg2) {
    
    arg1 = 1;
    _logos_orig$_ungrouped$SBAppSwitcherController$_updatePageViewScale$xTranslation$(self, _cmd, arg1, arg2);
}



static void _logos_method$_ungrouped$SBAppSwitcherPageViewController$setOffsetToIndex$animated$(_LOGOS_SELF_TYPE_NORMAL SBAppSwitcherPageViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, unsigned long long arg1, bool arg2) {
    
    arg1 = 2;
    _logos_orig$_ungrouped$SBAppSwitcherPageViewController$setOffsetToIndex$animated$(self, _cmd, arg1, arg2);
}



static void _logos_method$_ungrouped$SBAppSwitcherIconController$setOffsetToIndex$animated$(_LOGOS_SELF_TYPE_NORMAL SBAppSwitcherIconController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, unsigned long long arg1, bool arg2) {
    
    arg1 = 2;
    _logos_orig$_ungrouped$SBAppSwitcherIconController$setOffsetToIndex$animated$(self, _cmd, arg1, arg2);
}



static SBUIDismissSwitcherAnimationController* _logos_method$_ungrouped$SBUIDismissSwitcherAnimationController$initWithTransitionContextProvider$activatingDisplayItem$interactive$(_LOGOS_SELF_TYPE_INIT SBUIDismissSwitcherAnimationController* __unused self, SEL __unused _cmd, id arg1, id arg2, bool arg3) _LOGOS_RETURN_RETAINED {
    
    return NULL;
}



static long long _logos_method$_ungrouped$SBAppSwitcherSettings$switcherStyle(_LOGOS_SELF_TYPE_NORMAL SBAppSwitcherSettings* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 0;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$SBAppSwitcherController = objc_getClass("SBAppSwitcherController"); { MSHookMessageEx(_logos_class$_ungrouped$SBAppSwitcherController, @selector(_updatePageViewScale:xTranslation:), (IMP)&_logos_method$_ungrouped$SBAppSwitcherController$_updatePageViewScale$xTranslation$, (IMP*)&_logos_orig$_ungrouped$SBAppSwitcherController$_updatePageViewScale$xTranslation$);}Class _logos_class$_ungrouped$SBAppSwitcherPageViewController = objc_getClass("SBAppSwitcherPageViewController"); { MSHookMessageEx(_logos_class$_ungrouped$SBAppSwitcherPageViewController, @selector(setOffsetToIndex:animated:), (IMP)&_logos_method$_ungrouped$SBAppSwitcherPageViewController$setOffsetToIndex$animated$, (IMP*)&_logos_orig$_ungrouped$SBAppSwitcherPageViewController$setOffsetToIndex$animated$);}Class _logos_class$_ungrouped$SBAppSwitcherIconController = objc_getClass("SBAppSwitcherIconController"); { MSHookMessageEx(_logos_class$_ungrouped$SBAppSwitcherIconController, @selector(setOffsetToIndex:animated:), (IMP)&_logos_method$_ungrouped$SBAppSwitcherIconController$setOffsetToIndex$animated$, (IMP*)&_logos_orig$_ungrouped$SBAppSwitcherIconController$setOffsetToIndex$animated$);}Class _logos_class$_ungrouped$SBUIDismissSwitcherAnimationController = objc_getClass("SBUIDismissSwitcherAnimationController"); { MSHookMessageEx(_logos_class$_ungrouped$SBUIDismissSwitcherAnimationController, @selector(initWithTransitionContextProvider:activatingDisplayItem:interactive:), (IMP)&_logos_method$_ungrouped$SBUIDismissSwitcherAnimationController$initWithTransitionContextProvider$activatingDisplayItem$interactive$, (IMP*)&_logos_orig$_ungrouped$SBUIDismissSwitcherAnimationController$initWithTransitionContextProvider$activatingDisplayItem$interactive$);}Class _logos_class$_ungrouped$SBAppSwitcherSettings = objc_getClass("SBAppSwitcherSettings"); { MSHookMessageEx(_logos_class$_ungrouped$SBAppSwitcherSettings, @selector(switcherStyle), (IMP)&_logos_method$_ungrouped$SBAppSwitcherSettings$switcherStyle, (IMP*)&_logos_orig$_ungrouped$SBAppSwitcherSettings$switcherStyle);}} }
#line 40 "Tweak.xm"
