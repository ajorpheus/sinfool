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

@class SBAppSwitcherScrollView; @class SBReduceMotionDeckSwitcherViewController; 
static bool (*_logos_orig$_ungrouped$SBReduceMotionDeckSwitcherViewController$_shouldUseDepth)(_LOGOS_SELF_TYPE_NORMAL SBReduceMotionDeckSwitcherViewController* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$SBReduceMotionDeckSwitcherViewController$_shouldUseDepth(_LOGOS_SELF_TYPE_NORMAL SBReduceMotionDeckSwitcherViewController* _LOGOS_SELF_CONST, SEL); static bool (*_logos_orig$_ungrouped$SBReduceMotionDeckSwitcherViewController$_shouldShowIconAndTitleInItemContainers)(_LOGOS_SELF_TYPE_NORMAL SBReduceMotionDeckSwitcherViewController* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$SBReduceMotionDeckSwitcherViewController$_shouldShowIconAndTitleInItemContainers(_LOGOS_SELF_TYPE_NORMAL SBReduceMotionDeckSwitcherViewController* _LOGOS_SELF_CONST, SEL); static double (*_logos_orig$_ungrouped$SBReduceMotionDeckSwitcherViewController$_opacityForIconTitleViewAtIndex$)(_LOGOS_SELF_TYPE_NORMAL SBReduceMotionDeckSwitcherViewController* _LOGOS_SELF_CONST, SEL, unsigned long long); static double _logos_method$_ungrouped$SBReduceMotionDeckSwitcherViewController$_opacityForIconTitleViewAtIndex$(_LOGOS_SELF_TYPE_NORMAL SBReduceMotionDeckSwitcherViewController* _LOGOS_SELF_CONST, SEL, unsigned long long); static void (*_logos_orig$_ungrouped$SBAppSwitcherScrollView$setPagingEnabled$)(_LOGOS_SELF_TYPE_NORMAL SBAppSwitcherScrollView* _LOGOS_SELF_CONST, SEL, bool); static void _logos_method$_ungrouped$SBAppSwitcherScrollView$setPagingEnabled$(_LOGOS_SELF_TYPE_NORMAL SBAppSwitcherScrollView* _LOGOS_SELF_CONST, SEL, bool); 

#line 3 "Tweak.xm"

static bool _logos_method$_ungrouped$SBReduceMotionDeckSwitcherViewController$_shouldUseDepth(_LOGOS_SELF_TYPE_NORMAL SBReduceMotionDeckSwitcherViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 1;
}



static bool _logos_method$_ungrouped$SBReduceMotionDeckSwitcherViewController$_shouldShowIconAndTitleInItemContainers(_LOGOS_SELF_TYPE_NORMAL SBReduceMotionDeckSwitcherViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 1;
}



static double _logos_method$_ungrouped$SBReduceMotionDeckSwitcherViewController$_opacityForIconTitleViewAtIndex$(_LOGOS_SELF_TYPE_NORMAL SBReduceMotionDeckSwitcherViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, unsigned long long arg1) {
    return 0;
}



static void _logos_method$_ungrouped$SBAppSwitcherScrollView$setPagingEnabled$(_LOGOS_SELF_TYPE_NORMAL SBAppSwitcherScrollView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, bool arg1) {
    arg1 = 0;
    _logos_orig$_ungrouped$SBAppSwitcherScrollView$setPagingEnabled$(self, _cmd, arg1);
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$SBReduceMotionDeckSwitcherViewController = objc_getClass("SBReduceMotionDeckSwitcherViewController"); { MSHookMessageEx(_logos_class$_ungrouped$SBReduceMotionDeckSwitcherViewController, @selector(_shouldUseDepth), (IMP)&_logos_method$_ungrouped$SBReduceMotionDeckSwitcherViewController$_shouldUseDepth, (IMP*)&_logos_orig$_ungrouped$SBReduceMotionDeckSwitcherViewController$_shouldUseDepth);}{ MSHookMessageEx(_logos_class$_ungrouped$SBReduceMotionDeckSwitcherViewController, @selector(_shouldShowIconAndTitleInItemContainers), (IMP)&_logos_method$_ungrouped$SBReduceMotionDeckSwitcherViewController$_shouldShowIconAndTitleInItemContainers, (IMP*)&_logos_orig$_ungrouped$SBReduceMotionDeckSwitcherViewController$_shouldShowIconAndTitleInItemContainers);}{ MSHookMessageEx(_logos_class$_ungrouped$SBReduceMotionDeckSwitcherViewController, @selector(_opacityForIconTitleViewAtIndex:), (IMP)&_logos_method$_ungrouped$SBReduceMotionDeckSwitcherViewController$_opacityForIconTitleViewAtIndex$, (IMP*)&_logos_orig$_ungrouped$SBReduceMotionDeckSwitcherViewController$_opacityForIconTitleViewAtIndex$);}Class _logos_class$_ungrouped$SBAppSwitcherScrollView = objc_getClass("SBAppSwitcherScrollView"); { MSHookMessageEx(_logos_class$_ungrouped$SBAppSwitcherScrollView, @selector(setPagingEnabled:), (IMP)&_logos_method$_ungrouped$SBAppSwitcherScrollView$setPagingEnabled$, (IMP*)&_logos_orig$_ungrouped$SBAppSwitcherScrollView$setPagingEnabled$);}} }
#line 28 "Tweak.xm"
