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

@class _UIBadgeView; 
static _UIBadgeView* (*_logos_orig$_ungrouped$_UIBadgeView$initWithText$)(_LOGOS_SELF_TYPE_INIT _UIBadgeView*, SEL, id) _LOGOS_RETURN_RETAINED; static _UIBadgeView* _logos_method$_ungrouped$_UIBadgeView$initWithText$(_LOGOS_SELF_TYPE_INIT _UIBadgeView*, SEL, id) _LOGOS_RETURN_RETAINED; 

#line 3 "Tweak.xm"

static _UIBadgeView* _logos_method$_ungrouped$_UIBadgeView$initWithText$(_LOGOS_SELF_TYPE_INIT _UIBadgeView* __unused self, SEL __unused _cmd, id arg1) _LOGOS_RETURN_RETAINED {
    
    arg1 = @" ";
    return _logos_orig$_ungrouped$_UIBadgeView$initWithText$(self, _cmd, arg1);
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$_UIBadgeView = objc_getClass("_UIBadgeView"); { MSHookMessageEx(_logos_class$_ungrouped$_UIBadgeView, @selector(initWithText:), (IMP)&_logos_method$_ungrouped$_UIBadgeView$initWithText$, (IMP*)&_logos_orig$_ungrouped$_UIBadgeView$initWithText$);}} }
#line 11 "Tweak.xm"
