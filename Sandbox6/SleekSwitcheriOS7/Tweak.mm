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

@class SBAppSliderIconController; @class SBAppSliderScrollingViewController; 
static float (*_logos_orig$_ungrouped$SBAppSliderIconController$iconLabelWidth)(_LOGOS_SELF_TYPE_NORMAL SBAppSliderIconController* _LOGOS_SELF_CONST, SEL); static float _logos_method$_ungrouped$SBAppSliderIconController$iconLabelWidth(_LOGOS_SELF_TYPE_NORMAL SBAppSliderIconController* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$SBAppSliderIconController$setOffsetToIndex$animated$)(_LOGOS_SELF_TYPE_NORMAL SBAppSliderIconController* _LOGOS_SELF_CONST, SEL, unsigned int, BOOL); static void _logos_method$_ungrouped$SBAppSliderIconController$setOffsetToIndex$animated$(_LOGOS_SELF_TYPE_NORMAL SBAppSliderIconController* _LOGOS_SELF_CONST, SEL, unsigned int, BOOL); static void (*_logos_orig$_ungrouped$SBAppSliderScrollingViewController$setOffsetToIndex$animated$)(_LOGOS_SELF_TYPE_NORMAL SBAppSliderScrollingViewController* _LOGOS_SELF_CONST, SEL, unsigned int, BOOL); static void _logos_method$_ungrouped$SBAppSliderScrollingViewController$setOffsetToIndex$animated$(_LOGOS_SELF_TYPE_NORMAL SBAppSliderScrollingViewController* _LOGOS_SELF_CONST, SEL, unsigned int, BOOL); 

#line 3 "Tweak.xm"

static float _logos_method$_ungrouped$SBAppSliderIconController$iconLabelWidth(_LOGOS_SELF_TYPE_NORMAL SBAppSliderIconController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 0;
}



static void _logos_method$_ungrouped$SBAppSliderScrollingViewController$setOffsetToIndex$animated$(_LOGOS_SELF_TYPE_NORMAL SBAppSliderScrollingViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, unsigned int arg1, BOOL arg2) {
    
    arg1 = 0;
    _logos_orig$_ungrouped$SBAppSliderScrollingViewController$setOffsetToIndex$animated$(self, _cmd, arg1, arg2);
}



static void _logos_method$_ungrouped$SBAppSliderIconController$setOffsetToIndex$animated$(_LOGOS_SELF_TYPE_NORMAL SBAppSliderIconController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, unsigned int arg1, BOOL arg2) {
    
    arg1 = 0;
    _logos_orig$_ungrouped$SBAppSliderIconController$setOffsetToIndex$animated$(self, _cmd, arg1, arg2);
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$SBAppSliderIconController = objc_getClass("SBAppSliderIconController"); { MSHookMessageEx(_logos_class$_ungrouped$SBAppSliderIconController, @selector(iconLabelWidth), (IMP)&_logos_method$_ungrouped$SBAppSliderIconController$iconLabelWidth, (IMP*)&_logos_orig$_ungrouped$SBAppSliderIconController$iconLabelWidth);}{ MSHookMessageEx(_logos_class$_ungrouped$SBAppSliderIconController, @selector(setOffsetToIndex:animated:), (IMP)&_logos_method$_ungrouped$SBAppSliderIconController$setOffsetToIndex$animated$, (IMP*)&_logos_orig$_ungrouped$SBAppSliderIconController$setOffsetToIndex$animated$);}Class _logos_class$_ungrouped$SBAppSliderScrollingViewController = objc_getClass("SBAppSliderScrollingViewController"); { MSHookMessageEx(_logos_class$_ungrouped$SBAppSliderScrollingViewController, @selector(setOffsetToIndex:animated:), (IMP)&_logos_method$_ungrouped$SBAppSliderScrollingViewController$setOffsetToIndex$animated$, (IMP*)&_logos_orig$_ungrouped$SBAppSliderScrollingViewController$setOffsetToIndex$animated$);}} }
#line 26 "Tweak.xm"
