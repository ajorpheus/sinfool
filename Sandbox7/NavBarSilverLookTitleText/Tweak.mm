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

@class UINavigationItemView; 
static BOOL (*_logos_orig$_ungrouped$UINavigationItemView$_useSilverLookForBarStyle$)(_LOGOS_SELF_TYPE_NORMAL UINavigationItemView* _LOGOS_SELF_CONST, SEL, int); static BOOL _logos_method$_ungrouped$UINavigationItemView$_useSilverLookForBarStyle$(_LOGOS_SELF_TYPE_NORMAL UINavigationItemView* _LOGOS_SELF_CONST, SEL, int); 

#line 3 "Tweak.xm"

static BOOL _logos_method$_ungrouped$UINavigationItemView$_useSilverLookForBarStyle$(_LOGOS_SELF_TYPE_NORMAL UINavigationItemView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, int arg1) {
    return 1;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$UINavigationItemView = objc_getClass("UINavigationItemView"); { MSHookMessageEx(_logos_class$_ungrouped$UINavigationItemView, @selector(_useSilverLookForBarStyle:), (IMP)&_logos_method$_ungrouped$UINavigationItemView$_useSilverLookForBarStyle$, (IMP*)&_logos_orig$_ungrouped$UINavigationItemView$_useSilverLookForBarStyle$);}} }
#line 9 "Tweak.xm"
