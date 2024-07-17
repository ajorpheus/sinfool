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
static void (*_logos_orig$_ungrouped$_UIBadgeView$setBackgroundColor$)(_LOGOS_SELF_TYPE_NORMAL _UIBadgeView* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$_UIBadgeView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL _UIBadgeView* _LOGOS_SELF_CONST, SEL, id); 

#line 3 "Tweak.xm"

static void _logos_method$_ungrouped$_UIBadgeView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL _UIBadgeView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:159/255.0];
    _logos_orig$_ungrouped$_UIBadgeView$setBackgroundColor$(self, _cmd, arg1);
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$_UIBadgeView = objc_getClass("_UIBadgeView"); { MSHookMessageEx(_logos_class$_ungrouped$_UIBadgeView, @selector(setBackgroundColor:), (IMP)&_logos_method$_ungrouped$_UIBadgeView$setBackgroundColor$, (IMP*)&_logos_orig$_ungrouped$_UIBadgeView$setBackgroundColor$);}} }
#line 11 "Tweak.xm"
