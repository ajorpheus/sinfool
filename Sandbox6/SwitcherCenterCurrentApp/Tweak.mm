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

@class SBDeckSwitcherViewController; @class SBReduceMotionDeckSwitcherViewController; 
static unsigned long long (*_logos_orig$_ungrouped$SBDeckSwitcherViewController$_indexForPresentationOrDismissalIsPresenting$)(_LOGOS_SELF_TYPE_NORMAL SBDeckSwitcherViewController* _LOGOS_SELF_CONST, SEL, bool); static unsigned long long _logos_method$_ungrouped$SBDeckSwitcherViewController$_indexForPresentationOrDismissalIsPresenting$(_LOGOS_SELF_TYPE_NORMAL SBDeckSwitcherViewController* _LOGOS_SELF_CONST, SEL, bool); static unsigned long long (*_logos_orig$_ungrouped$SBReduceMotionDeckSwitcherViewController$_indexForPresentationOrDismissalIsPresenting$)(_LOGOS_SELF_TYPE_NORMAL SBReduceMotionDeckSwitcherViewController* _LOGOS_SELF_CONST, SEL, bool); static unsigned long long _logos_method$_ungrouped$SBReduceMotionDeckSwitcherViewController$_indexForPresentationOrDismissalIsPresenting$(_LOGOS_SELF_TYPE_NORMAL SBReduceMotionDeckSwitcherViewController* _LOGOS_SELF_CONST, SEL, bool); 

#line 3 "Tweak.xm"

static unsigned long long _logos_method$_ungrouped$SBDeckSwitcherViewController$_indexForPresentationOrDismissalIsPresenting$(_LOGOS_SELF_TYPE_NORMAL SBDeckSwitcherViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, bool arg1) {
    return 1;
}



static unsigned long long _logos_method$_ungrouped$SBReduceMotionDeckSwitcherViewController$_indexForPresentationOrDismissalIsPresenting$(_LOGOS_SELF_TYPE_NORMAL SBReduceMotionDeckSwitcherViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, bool arg1) {
    return 1;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$SBDeckSwitcherViewController = objc_getClass("SBDeckSwitcherViewController"); { MSHookMessageEx(_logos_class$_ungrouped$SBDeckSwitcherViewController, @selector(_indexForPresentationOrDismissalIsPresenting:), (IMP)&_logos_method$_ungrouped$SBDeckSwitcherViewController$_indexForPresentationOrDismissalIsPresenting$, (IMP*)&_logos_orig$_ungrouped$SBDeckSwitcherViewController$_indexForPresentationOrDismissalIsPresenting$);}Class _logos_class$_ungrouped$SBReduceMotionDeckSwitcherViewController = objc_getClass("SBReduceMotionDeckSwitcherViewController"); { MSHookMessageEx(_logos_class$_ungrouped$SBReduceMotionDeckSwitcherViewController, @selector(_indexForPresentationOrDismissalIsPresenting:), (IMP)&_logos_method$_ungrouped$SBReduceMotionDeckSwitcherViewController$_indexForPresentationOrDismissalIsPresenting$, (IMP*)&_logos_orig$_ungrouped$SBReduceMotionDeckSwitcherViewController$_indexForPresentationOrDismissalIsPresenting$);}} }
#line 15 "Tweak.xm"
