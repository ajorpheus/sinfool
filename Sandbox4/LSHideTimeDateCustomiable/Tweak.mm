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

@class SBDashBoardView; 
static void (*_logos_orig$_ungrouped$SBDashBoardView$setDateViewPageAlignment$)(_LOGOS_SELF_TYPE_NORMAL SBDashBoardView* _LOGOS_SELF_CONST, SEL, long long); static void _logos_method$_ungrouped$SBDashBoardView$setDateViewPageAlignment$(_LOGOS_SELF_TYPE_NORMAL SBDashBoardView* _LOGOS_SELF_CONST, SEL, long long); 

#line 3 "Tweak.xm"

static void _logos_method$_ungrouped$SBDashBoardView$setDateViewPageAlignment$(_LOGOS_SELF_TYPE_NORMAL SBDashBoardView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, long long arg1) {
    
    arg1 = -1;
    _logos_orig$_ungrouped$SBDashBoardView$setDateViewPageAlignment$(self, _cmd, arg1);
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$SBDashBoardView = objc_getClass("SBDashBoardView"); { MSHookMessageEx(_logos_class$_ungrouped$SBDashBoardView, @selector(setDateViewPageAlignment:), (IMP)&_logos_method$_ungrouped$SBDashBoardView$setDateViewPageAlignment$, (IMP*)&_logos_orig$_ungrouped$SBDashBoardView$setDateViewPageAlignment$);}} }
#line 11 "Tweak.xm"
