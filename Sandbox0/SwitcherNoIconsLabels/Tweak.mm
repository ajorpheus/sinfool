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

@class SBDeckSwitcherViewController; 
static BOOL (*_logos_orig$_ungrouped$SBDeckSwitcherViewController$shouldShowIconAndLabelOfContainer$)(_LOGOS_SELF_TYPE_NORMAL SBDeckSwitcherViewController* _LOGOS_SELF_CONST, SEL, id); static BOOL _logos_method$_ungrouped$SBDeckSwitcherViewController$shouldShowIconAndLabelOfContainer$(_LOGOS_SELF_TYPE_NORMAL SBDeckSwitcherViewController* _LOGOS_SELF_CONST, SEL, id); 

#line 3 "Tweak.xm"

static BOOL _logos_method$_ungrouped$SBDeckSwitcherViewController$shouldShowIconAndLabelOfContainer$(_LOGOS_SELF_TYPE_NORMAL SBDeckSwitcherViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    return 0;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$SBDeckSwitcherViewController = objc_getClass("SBDeckSwitcherViewController"); { MSHookMessageEx(_logos_class$_ungrouped$SBDeckSwitcherViewController, @selector(shouldShowIconAndLabelOfContainer:), (IMP)&_logos_method$_ungrouped$SBDeckSwitcherViewController$shouldShowIconAndLabelOfContainer$, (IMP*)&_logos_orig$_ungrouped$SBDeckSwitcherViewController$shouldShowIconAndLabelOfContainer$);}} }
#line 9 "Tweak.xm"
