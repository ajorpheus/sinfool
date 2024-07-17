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

@class SBIconBadgeView; 
static void (*_logos_orig$_ungrouped$SBIconBadgeView$configureForIcon$location$highlighted$)(_LOGOS_SELF_TYPE_NORMAL SBIconBadgeView* _LOGOS_SELF_CONST, SEL, id, int, bool); static void _logos_method$_ungrouped$SBIconBadgeView$configureForIcon$location$highlighted$(_LOGOS_SELF_TYPE_NORMAL SBIconBadgeView* _LOGOS_SELF_CONST, SEL, id, int, bool); 

#line 3 "Tweak.xm"

static void _logos_method$_ungrouped$SBIconBadgeView$configureForIcon$location$highlighted$(_LOGOS_SELF_TYPE_NORMAL SBIconBadgeView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1, int arg2, bool arg3) {
    arg2 = 1;
    _logos_orig$_ungrouped$SBIconBadgeView$configureForIcon$location$highlighted$(self, _cmd, arg1, arg2, arg3);
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$SBIconBadgeView = objc_getClass("SBIconBadgeView"); { MSHookMessageEx(_logos_class$_ungrouped$SBIconBadgeView, @selector(configureForIcon:location:highlighted:), (IMP)&_logos_method$_ungrouped$SBIconBadgeView$configureForIcon$location$highlighted$, (IMP*)&_logos_orig$_ungrouped$SBIconBadgeView$configureForIcon$location$highlighted$);}} }
#line 10 "Tweak.xm"
