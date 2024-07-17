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

@class SBDeckSwitcherItemContainer; @class SBDeckSwitcherIconImageContainerView; 
static void (*_logos_orig$_ungrouped$SBDeckSwitcherItemContainer$setContentPageViewScale$)(_LOGOS_SELF_TYPE_NORMAL SBDeckSwitcherItemContainer* _LOGOS_SELF_CONST, SEL, double); static void _logos_method$_ungrouped$SBDeckSwitcherItemContainer$setContentPageViewScale$(_LOGOS_SELF_TYPE_NORMAL SBDeckSwitcherItemContainer* _LOGOS_SELF_CONST, SEL, double); static id (*_logos_orig$_ungrouped$SBDeckSwitcherIconImageContainerView$displayName)(_LOGOS_SELF_TYPE_NORMAL SBDeckSwitcherIconImageContainerView* _LOGOS_SELF_CONST, SEL); static id _logos_method$_ungrouped$SBDeckSwitcherIconImageContainerView$displayName(_LOGOS_SELF_TYPE_NORMAL SBDeckSwitcherIconImageContainerView* _LOGOS_SELF_CONST, SEL); 

#line 3 "Tweak.xm"

static void _logos_method$_ungrouped$SBDeckSwitcherItemContainer$setContentPageViewScale$(_LOGOS_SELF_TYPE_NORMAL SBDeckSwitcherItemContainer* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, double arg1) {
    
    arg1 = 0.5;
    _logos_orig$_ungrouped$SBDeckSwitcherItemContainer$setContentPageViewScale$(self, _cmd, arg1);
}



static id _logos_method$_ungrouped$SBDeckSwitcherIconImageContainerView$displayName(_LOGOS_SELF_TYPE_NORMAL SBDeckSwitcherIconImageContainerView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return @"";
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$SBDeckSwitcherItemContainer = objc_getClass("SBDeckSwitcherItemContainer"); { MSHookMessageEx(_logos_class$_ungrouped$SBDeckSwitcherItemContainer, @selector(setContentPageViewScale:), (IMP)&_logos_method$_ungrouped$SBDeckSwitcherItemContainer$setContentPageViewScale$, (IMP*)&_logos_orig$_ungrouped$SBDeckSwitcherItemContainer$setContentPageViewScale$);}Class _logos_class$_ungrouped$SBDeckSwitcherIconImageContainerView = objc_getClass("SBDeckSwitcherIconImageContainerView"); { MSHookMessageEx(_logos_class$_ungrouped$SBDeckSwitcherIconImageContainerView, @selector(displayName), (IMP)&_logos_method$_ungrouped$SBDeckSwitcherIconImageContainerView$displayName, (IMP*)&_logos_orig$_ungrouped$SBDeckSwitcherIconImageContainerView$displayName);}} }
#line 18 "Tweak.xm"
