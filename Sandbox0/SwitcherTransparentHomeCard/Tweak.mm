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

@class SBAppSwitcherPageView; @class SBDeckSwitcherItemContainer; 
static void (*_logos_orig$_ungrouped$SBDeckSwitcherItemContainer$setContentBlurRadiusProgress$)(_LOGOS_SELF_TYPE_NORMAL SBDeckSwitcherItemContainer* _LOGOS_SELF_CONST, SEL, double); static void _logos_method$_ungrouped$SBDeckSwitcherItemContainer$setContentBlurRadiusProgress$(_LOGOS_SELF_TYPE_NORMAL SBDeckSwitcherItemContainer* _LOGOS_SELF_CONST, SEL, double); static void (*_logos_orig$_ungrouped$SBAppSwitcherPageView$setShadowAlpha$)(_LOGOS_SELF_TYPE_NORMAL SBAppSwitcherPageView* _LOGOS_SELF_CONST, SEL, double); static void _logos_method$_ungrouped$SBAppSwitcherPageView$setShadowAlpha$(_LOGOS_SELF_TYPE_NORMAL SBAppSwitcherPageView* _LOGOS_SELF_CONST, SEL, double); 

#line 3 "Tweak.xm"

static void _logos_method$_ungrouped$SBDeckSwitcherItemContainer$setContentBlurRadiusProgress$(_LOGOS_SELF_TYPE_NORMAL SBDeckSwitcherItemContainer* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, double arg1) {
    
    arg1 = 0;
    _logos_orig$_ungrouped$SBDeckSwitcherItemContainer$setContentBlurRadiusProgress$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$SBAppSwitcherPageView$setShadowAlpha$(_LOGOS_SELF_TYPE_NORMAL SBAppSwitcherPageView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, double arg1) {
    
    arg1 = 0;
    _logos_orig$_ungrouped$SBAppSwitcherPageView$setShadowAlpha$(self, _cmd, arg1);
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$SBDeckSwitcherItemContainer = objc_getClass("SBDeckSwitcherItemContainer"); { MSHookMessageEx(_logos_class$_ungrouped$SBDeckSwitcherItemContainer, @selector(setContentBlurRadiusProgress:), (IMP)&_logos_method$_ungrouped$SBDeckSwitcherItemContainer$setContentBlurRadiusProgress$, (IMP*)&_logos_orig$_ungrouped$SBDeckSwitcherItemContainer$setContentBlurRadiusProgress$);}Class _logos_class$_ungrouped$SBAppSwitcherPageView = objc_getClass("SBAppSwitcherPageView"); { MSHookMessageEx(_logos_class$_ungrouped$SBAppSwitcherPageView, @selector(setShadowAlpha:), (IMP)&_logos_method$_ungrouped$SBAppSwitcherPageView$setShadowAlpha$, (IMP*)&_logos_orig$_ungrouped$SBAppSwitcherPageView$setShadowAlpha$);}} }
#line 19 "Tweak.xm"
