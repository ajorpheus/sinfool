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

@class SPTStatusBarManager; 
static id (*_logos_orig$_ungrouped$SPTStatusBarManager$hideStatusBarWithAnimation$)(_LOGOS_SELF_TYPE_NORMAL SPTStatusBarManager* _LOGOS_SELF_CONST, SEL, long long); static id _logos_method$_ungrouped$SPTStatusBarManager$hideStatusBarWithAnimation$(_LOGOS_SELF_TYPE_NORMAL SPTStatusBarManager* _LOGOS_SELF_CONST, SEL, long long); 

#line 3 "Tweak.xm"

static id _logos_method$_ungrouped$SPTStatusBarManager$hideStatusBarWithAnimation$(_LOGOS_SELF_TYPE_NORMAL SPTStatusBarManager* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, long long arg1) {
    return NULL;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$SPTStatusBarManager = objc_getClass("SPTStatusBarManager"); { MSHookMessageEx(_logos_class$_ungrouped$SPTStatusBarManager, @selector(hideStatusBarWithAnimation:), (IMP)&_logos_method$_ungrouped$SPTStatusBarManager$hideStatusBarWithAnimation$, (IMP*)&_logos_orig$_ungrouped$SPTStatusBarManager$hideStatusBarWithAnimation$);}} }
#line 9 "Tweak.xm"
